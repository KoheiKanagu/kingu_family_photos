import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/utils/firebase/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_user_providers.g.dart';

/// [fb_auth.User]を取得する
@riverpod
Stream<fb_auth.User?> firebaseUser(Ref ref) =>
    ref.watch(firebaseAuthProvider).userChanges();

/// UIDを取得する
///
/// サインインしていない場合はnullを返す
@riverpod
Future<String?> firebaseUserUid(Ref ref) =>
    ref.watch(firebaseUserProvider.selectAsync((value) => value?.uid));
