import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/utils/firebase/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config_providers.g.dart';

@riverpod
Future<String> remoteConfigGetStringValue(
  Ref ref, {
  required String key,
  required String defaultValue,
}) => ref.watch(
  remoteConfigValuesProvider.selectAsync(
    (e) => e[key]?.asString() ?? defaultValue,
  ),
);

@riverpod
Future<int> remoteConfigGetIntValue(
  Ref ref, {
  required String key,
  required int defaultValue,
}) => ref.watch(
  remoteConfigValuesProvider.selectAsync(
    (e) => e[key]?.asInt() ?? defaultValue,
  ),
);

@riverpod
Future<double> remoteConfigGetDoubleValue(
  Ref ref, {
  required String key,
  required double defaultValue,
}) => ref.watch(
  remoteConfigValuesProvider.selectAsync(
    (e) => e[key]?.asDouble() ?? defaultValue,
  ),
);

@riverpod
Future<bool> remoteConfigGetBoolValue(
  Ref ref, {
  required String key,
  required bool defaultValue,
}) => ref.watch(
  remoteConfigValuesProvider.selectAsync(
    (e) => e[key]?.asBool() ?? defaultValue,
  ),
);

@riverpod
Stream<Map<String, RemoteConfigValue>> remoteConfigValues(Ref ref) async* {
  final config = ref.watch(firebaseRemoteConfigProvider);
  await config.fetchAndActivate();
  yield config.getAll();
}

@riverpod
String remoteConfigValuesEmail(Ref ref) =>
    ref.watch(firebaseRemoteConfigProvider).getString('email');
