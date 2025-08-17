// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_go_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$appStartupPageRoute];

RouteBase get $appStartupPageRoute => GoRouteData.$route(
  path: '/',

  factory: _$AppStartupPageRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'onboarding',

      factory: _$OnboardingPageRoute._fromState,
    ),
    GoRouteData.$route(path: 'home', factory: _$HomePageRoute._fromState),
  ],
);

mixin _$AppStartupPageRoute on GoRouteData {
  static AppStartupPageRoute _fromState(GoRouterState state) =>
      const AppStartupPageRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$OnboardingPageRoute on GoRouteData {
  static OnboardingPageRoute _fromState(GoRouterState state) =>
      const OnboardingPageRoute();

  @override
  String get location => GoRouteData.$location('/onboarding');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$HomePageRoute on GoRouteData {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  @override
  String get location => GoRouteData.$location('/home');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myGoRouterHash() => r'acaf8512f58175700c6fddc7fdf53354aa8a5c82';

/// See also [myGoRouter].
@ProviderFor(myGoRouter)
final myGoRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  myGoRouter,
  name: r'myGoRouterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myGoRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MyGoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
