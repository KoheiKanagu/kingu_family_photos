import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kingu_family_photos/constants/app_env.dart';
import 'package:kingu_family_photos/constants/firebase_options.dart';
import 'package:kingu_family_photos/gen/strings.g.dart';
import 'package:kingu_family_photos/routing/application/my_go_router.dart';
import 'package:kingu_family_photos/theme.dart';
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

    final width = MediaQuery.sizeOf(context).width;

    final textTheme = GoogleFonts.notoSansJpTextTheme();
    final theme = MaterialTheme(textTheme);

    return ColoredBox(
      color: switch (MediaQuery.platformBrightnessOf(context)) {
        Brightness.light => theme.light().scaffoldBackgroundColor,
        Brightness.dark => theme.dark().scaffoldBackgroundColor,
      },
      child: FractionallySizedBox(
        widthFactor: width < 600 ? 1.0 : 600 / width,
        child: MaterialApp.router(
          supportedLocales: AppLocaleUtils.supportedLocales,
          theme: theme.light(),
          darkTheme: theme.dark(),
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          routerConfig: router,
        ),
      ),
    );
  }
}
