import 'dart:async';
import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/utils/configure/remote_config_providers.dart';
import 'package:kingu_family_photos/utils/configure/shared_preferences_providers.dart';
import 'package:kingu_family_photos/utils/firebase/firebase_providers.dart';
import 'package:kingu_family_photos/utils/my_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@riverpod
Future<void> authSignIn(
  Ref ref, {
  required String password,
}) async {
  logger.debug('signIn');

  final email = ref.watch(remoteConfigValuesEmailProvider);
  final base64Password = base64.encode(utf8.encode(password));

  await ref
      .watch(firebaseAuthProvider)
      .signInWithEmailAndPassword(
        email: email,
        password: base64Password,
      );
  await ref.watch(firebaseAnalyticsProvider).logSignUp(signUpMethod: 'email');

  logger.debug('signIn succeeded');
}

@riverpod
Future<void> authSignOut(Ref ref) async {
  await ref.watch(firebaseAnalyticsProvider).logEvent(name: 'sign_out');

  logger.debug('clear local data');
  await Future.wait([
    ref.watch(sharedPreferencesProvider).clear(),
    ref.watch(firebaseAnalyticsProvider).resetAnalyticsData(),
  ]);

  await ref.watch(firebaseAuthProvider).signOut();
  logger.debug('signOut succeeded');
}

/// アプリが初回起動かチェックして、初回起動の場合はサインアウトを実行する
///
/// Firebase Authの認証情報はiCloudでバックアップされるため、
/// アプリを再インストールしたり、別の端末であっても認証情報が復元されてしまう可能性がある
@riverpod
Future<void> authSignOutWhenFirstRun(Ref ref) async {
  final preferences = ref.watch(sharedPreferencesProvider);
  const key = 'isFirstRun';

  final firstRun = await preferences.getBool(key).then((e) => e ?? true);

  if (firstRun) {
    await ref.watch(firebaseAuthProvider).signOut();
    await preferences.setBool(key, false);
  }
}
