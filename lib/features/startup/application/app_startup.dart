import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/constants/app_env.dart';
import 'package:kingu_family_photos/features/authentication/application/auth_providers.dart';
import 'package:kingu_family_photos/utils/configure/device_info_providers.dart';
import 'package:kingu_family_photos/utils/configure/package_info_providers.dart';
import 'package:kingu_family_photos/utils/firebase/firebase_providers.dart';
import 'package:kingu_family_photos/utils/my_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker/talker.dart';

part 'app_startup.g.dart';

/// アプリ起動時に非同期で初期化が必要な処理を行う
@riverpod
Future<void> appStartup(Ref ref) async {
  ref.onDispose(() {
    ref
      ..invalidate(packageInfoProvider)
      ..invalidate(deviceInfoProvider);
  });

  FlutterError.onError = (details) {
    logger.handle(
      TalkerException(
        Exception(details.exceptionAsString()),
        message: details.context?.toString(),
        stackTrace: details.stack,
        logLevel: LogLevel.error,
      ),
    );
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.handle(
      TalkerException(
        Exception(error.toString()),
        message: error.toString(),
        stackTrace: stack,
        logLevel: LogLevel.error,
      ),
    );
    return true;
  };

  /// initialize AppCheck
  await Future.wait([
    if (kAppEnvDev)
      FirebaseAppCheck.instance.activate(
        webProvider: ReCaptchaEnterpriseProvider(''), // デバッグトークンを使用する
      ),
    if (kAppEnvProd)
      FirebaseAppCheck.instance.activate(
        webProvider: ReCaptchaEnterpriseProvider(kReCaptchaV3SiteKey),
      ),
  ]);

  await Future.wait([
    ref.watch(packageInfoProvider.future),
    ref.watch(deviceInfoProvider.future),
    ref
        .watch(firebaseAnalyticsProvider)
        .setAnalyticsCollectionEnabled(kReleaseMode),
    ref.watch(authSignOutWhenFirstRunProvider.future),
  ]);

  await Future.wait([
    // authStateChangesが取得できたらFirebase Authの初期化が完了したと言える
    ref.watch(firebaseAuthProvider).authStateChanges().first,
  ]);
}
