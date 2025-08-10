import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/extensions/ref_extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_providers.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth firebaseAuth(Ref ref) => FirebaseAuth.instance;

@Riverpod(keepAlive: true)
FirebaseFirestore firebaseFirestore(Ref ref) => FirebaseFirestore.instance;

@Riverpod(keepAlive: true)
FirebaseStorage firebaseStorage(Ref ref) => FirebaseStorage.instance;

@riverpod
FirebaseAnalytics firebaseAnalytics(Ref ref) => FirebaseAnalytics.instance;

@riverpod
Future<String> firebaseStorageGsFileDownloadUrl(
  Ref ref, {
  required String fileUri,
}) async {
  ref.cacheFor(const Duration(minutes: 5));

  if (fileUri.startsWith('gs://')) {
    return ref
        .watch(firebaseStorageProvider)
        .refFromURL(fileUri)
        .getDownloadURL();
  } else {
    return fileUri;
  }
}

@Riverpod(keepAlive: true)
FirebaseFunctions firebaseFunctions(Ref ref) =>
    FirebaseFunctions.instanceFor(region: 'asia-northeast1');

@Riverpod(keepAlive: true)
FirebaseRemoteConfig firebaseRemoteConfig(Ref ref) =>
    FirebaseRemoteConfig.instance;
