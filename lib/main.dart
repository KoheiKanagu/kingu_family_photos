import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kingu_family_photos/constants/app_env.dart';
import 'package:kingu_family_photos/constants/firebase_options.dart';
import 'package:kingu_family_photos/gen/strings.g.dart';
import 'package:kingu_family_photos/routing/application/my_go_router.dart';
import 'package:kingu_family_photos/utils/my_logger.dart';

Future<void> main() async {
  logger.info('AppEnv: $appEnv');

  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  final (locale, _) = (
    await LocaleSettings.useDeviceLocale(),
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
  );

  Intl.defaultLocale = locale.languageCode;

  runApp(
    ProviderScope(
      observers: [
        talkerRiverpodObserver,
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(myGoRouterProvider);

    return MaterialApp.router(
      supportedLocales: AppLocaleUtils.supportedLocales,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        primaryColor: const Color(0xFF00A5BF),
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routerConfig: router,
    );
  }
}
