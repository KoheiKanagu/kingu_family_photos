// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseAuthHash() => r'8c3e9d11b27110ca96130356b5ef4d5d34a5ffc2';

/// See also [firebaseAuth].
@ProviderFor(firebaseAuth)
final firebaseAuthProvider = Provider<FirebaseAuth>.internal(
  firebaseAuth,
  name: r'firebaseAuthProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseAuthRef = ProviderRef<FirebaseAuth>;
String _$firebaseFirestoreHash() => r'211c9d7cd91051da8adfacbf85a09b8bad1d41e8';

/// See also [firebaseFirestore].
@ProviderFor(firebaseFirestore)
final firebaseFirestoreProvider = Provider<FirebaseFirestore>.internal(
  firebaseFirestore,
  name: r'firebaseFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseFirestoreRef = ProviderRef<FirebaseFirestore>;
String _$firebaseStorageHash() => r'4d34fbbd82ac849c74805e19a05079afa5e20cad';

/// See also [firebaseStorage].
@ProviderFor(firebaseStorage)
final firebaseStorageProvider = Provider<FirebaseStorage>.internal(
  firebaseStorage,
  name: r'firebaseStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseStorageRef = ProviderRef<FirebaseStorage>;
String _$firebaseAnalyticsHash() => r'a8039134efd65fe5f2b3009d3685423d7eefe2dd';

/// See also [firebaseAnalytics].
@ProviderFor(firebaseAnalytics)
final firebaseAnalyticsProvider =
    AutoDisposeProvider<FirebaseAnalytics>.internal(
      firebaseAnalytics,
      name: r'firebaseAnalyticsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$firebaseAnalyticsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseAnalyticsRef = AutoDisposeProviderRef<FirebaseAnalytics>;
String _$firebaseStorageGsFileDownloadUrlHash() =>
    r'1b3ca4182d70c312c8a8d8eee0b005d56b182a6a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [firebaseStorageGsFileDownloadUrl].
@ProviderFor(firebaseStorageGsFileDownloadUrl)
const firebaseStorageGsFileDownloadUrlProvider =
    FirebaseStorageGsFileDownloadUrlFamily();

/// See also [firebaseStorageGsFileDownloadUrl].
class FirebaseStorageGsFileDownloadUrlFamily
    extends Family<AsyncValue<String>> {
  /// See also [firebaseStorageGsFileDownloadUrl].
  const FirebaseStorageGsFileDownloadUrlFamily();

  /// See also [firebaseStorageGsFileDownloadUrl].
  FirebaseStorageGsFileDownloadUrlProvider call({required String fileUri}) {
    return FirebaseStorageGsFileDownloadUrlProvider(fileUri: fileUri);
  }

  @override
  FirebaseStorageGsFileDownloadUrlProvider getProviderOverride(
    covariant FirebaseStorageGsFileDownloadUrlProvider provider,
  ) {
    return call(fileUri: provider.fileUri);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'firebaseStorageGsFileDownloadUrlProvider';
}

/// See also [firebaseStorageGsFileDownloadUrl].
class FirebaseStorageGsFileDownloadUrlProvider
    extends AutoDisposeFutureProvider<String> {
  /// See also [firebaseStorageGsFileDownloadUrl].
  FirebaseStorageGsFileDownloadUrlProvider({required String fileUri})
    : this._internal(
        (ref) => firebaseStorageGsFileDownloadUrl(
          ref as FirebaseStorageGsFileDownloadUrlRef,
          fileUri: fileUri,
        ),
        from: firebaseStorageGsFileDownloadUrlProvider,
        name: r'firebaseStorageGsFileDownloadUrlProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$firebaseStorageGsFileDownloadUrlHash,
        dependencies: FirebaseStorageGsFileDownloadUrlFamily._dependencies,
        allTransitiveDependencies:
            FirebaseStorageGsFileDownloadUrlFamily._allTransitiveDependencies,
        fileUri: fileUri,
      );

  FirebaseStorageGsFileDownloadUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fileUri,
  }) : super.internal();

  final String fileUri;

  @override
  Override overrideWith(
    FutureOr<String> Function(FirebaseStorageGsFileDownloadUrlRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FirebaseStorageGsFileDownloadUrlProvider._internal(
        (ref) => create(ref as FirebaseStorageGsFileDownloadUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fileUri: fileUri,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _FirebaseStorageGsFileDownloadUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FirebaseStorageGsFileDownloadUrlProvider &&
        other.fileUri == fileUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fileUri.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FirebaseStorageGsFileDownloadUrlRef
    on AutoDisposeFutureProviderRef<String> {
  /// The parameter `fileUri` of this provider.
  String get fileUri;
}

class _FirebaseStorageGsFileDownloadUrlProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with FirebaseStorageGsFileDownloadUrlRef {
  _FirebaseStorageGsFileDownloadUrlProviderElement(super.provider);

  @override
  String get fileUri =>
      (origin as FirebaseStorageGsFileDownloadUrlProvider).fileUri;
}

String _$firebaseFunctionsHash() => r'097fd9df60c1e156f273cabdfd9196deb30b9f18';

/// See also [firebaseFunctions].
@ProviderFor(firebaseFunctions)
final firebaseFunctionsProvider = Provider<FirebaseFunctions>.internal(
  firebaseFunctions,
  name: r'firebaseFunctionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseFunctionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseFunctionsRef = ProviderRef<FirebaseFunctions>;
String _$firebaseRemoteConfigHash() =>
    r'558f490ba1ca6e87cc08e4c965455411ae7bd64a';

/// See also [firebaseRemoteConfig].
@ProviderFor(firebaseRemoteConfig)
final firebaseRemoteConfigProvider = Provider<FirebaseRemoteConfig>.internal(
  firebaseRemoteConfig,
  name: r'firebaseRemoteConfigProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseRemoteConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseRemoteConfigRef = ProviderRef<FirebaseRemoteConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
