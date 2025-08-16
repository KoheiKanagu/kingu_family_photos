import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/features/authentication/application/firebase_user_providers.dart';
import 'package:kingu_family_photos/features/startup/application/app_startup.dart';
import 'package:kingu_family_photos/utils/configure/remote_config_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_go_router_listenable.freezed.dart';
part 'my_go_router_listenable.g.dart';

@freezed
abstract class MyGoRouterListenable with _$MyGoRouterListenable {
  const factory MyGoRouterListenable({
    @Default(false) bool signedIn,
    AsyncValue<void>? appStartupState,
  }) = _MyGoRouterListenable;
}

// リダイレクトに必要な値を監視するためのNotifier
@riverpod
Raw<ValueNotifier<MyGoRouterListenable>> refreshListenable(Ref ref) {
  final listenable = ValueNotifier<MyGoRouterListenable>(
    const MyGoRouterListenable(),
  );

  ref
    ..listen(
      // アプリの初期化状態を監視
      appStartupProvider,
      (_, next) {
        listenable.value = listenable.value.copyWith(appStartupState: next);
      },
    )
    ..listen(
      // FirebaseUserのuidが取得できるまで待つ
      firebaseUserUidProvider.select((e) => e.value),
      (_, uid) async {
        listenable.value = listenable.value.copyWith(signedIn: uid != null);
      },
    )
    ..listen(remoteConfigValuesProvider, (_, _) {})
    ..onDispose(listenable.dispose);

  return listenable;
}
