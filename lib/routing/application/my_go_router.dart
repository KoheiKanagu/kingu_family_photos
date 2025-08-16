import 'dart:core';

import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/features/home/presentation/home_page.dart';
import 'package:kingu_family_photos/features/onboarding/presentation/onboarding_page.dart';
import 'package:kingu_family_photos/features/startup/presentation/startup_page.dart';
import 'package:kingu_family_photos/routing/application/my_go_router_listenable.dart';
import 'package:kingu_family_photos/utils/firebase/firebase_providers.dart';
import 'package:kingu_family_photos/utils/my_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_go_router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

BuildContext? get rootContext =>
    rootNavigatorKey.currentState?.overlay?.context;

final publicRoutes = <String>[
  const OnboardingPageRoute().location,
];

@riverpod
GoRouter myGoRouter(Ref ref) => GoRouter(
  navigatorKey: rootNavigatorKey,
  routes: $appRoutes,
  errorBuilder: (context, state) {
    logger.handle(state.error.toString(), StackTrace.current, {
      'name': state.name,
      'fullPath': state.fullPath,
      'pathParameters': state.pathParameters,
      'queryParameters': state.uri.queryParameters,
      'location': state.uri,
      'queryParametersAll': state.uri.queryParametersAll,
    });

    return const AppStartupLoadingWidget();
  },
  refreshListenable: ref.watch(refreshListenableProvider),
  redirect: (context, state) async {
    final refreshListenable = ref.watch(refreshListenableProvider).value;

    final appStartupState =
        refreshListenable.appStartupState ?? const AsyncLoading();

    // 初期化が完了するのを待つ
    if (appStartupState.isLoading || appStartupState.hasError) {
      return const AppStartupPageRoute().location;
    }

    final isPublicRoute = publicRoutes.any(
      (e) => state.matchedLocation.startsWith(e),
    );

    if (refreshListenable.signedIn) {
      if (isPublicRoute || state.matchedLocation == '/') {
        // サインイン済み
        // パブリックルートかルートにアクセスした場合はホームへ
        return const HomePageRoute().location;
      }

      // プライベートルートの場合は何もしない
      return null;
    }

    if (isPublicRoute) {
      // サインインしていない場合は、パブリックルートにアクセスできる
      return null;
    }

    // サインインしていないのにプライベートルートにアクセスしようとしている場合
    return const OnboardingPageRoute().location;
  },
  observers: [
    FirebaseAnalyticsObserver(analytics: ref.watch(firebaseAnalyticsProvider)),
  ],
  debugLogDiagnostics: kDebugMode,
);

@TypedGoRoute<AppStartupPageRoute>(
  path: AppStartupPageRoute.path,
  routes: [
    TypedGoRoute<OnboardingPageRoute>(path: OnboardingPageRoute.path),
    TypedGoRoute<HomePageRoute>(path: HomePageRoute.path),
  ],
)
class AppStartupPageRoute extends GoRouteData with _$AppStartupPageRoute {
  const AppStartupPageRoute();

  static const path = '/';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: AppStartupWidget(), name: path);
  }
}

class OnboardingPageRoute extends GoRouteData with _$OnboardingPageRoute {
  const OnboardingPageRoute();

  static const path = 'onboarding';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: const OnboardingPage(),
      name: state.matchedLocation,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }
}

class HomePageRoute extends GoRouteData with _$HomePageRoute {
  const HomePageRoute();

  static const path = 'home';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: const HomePage(),
      name: state.matchedLocation,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }
}
