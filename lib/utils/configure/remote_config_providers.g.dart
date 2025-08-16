// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteConfigGetStringValueHash() =>
    r'72a5da12928253037f2227e18f423f2355ffe8d3';

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

/// See also [remoteConfigGetStringValue].
@ProviderFor(remoteConfigGetStringValue)
const remoteConfigGetStringValueProvider = RemoteConfigGetStringValueFamily();

/// See also [remoteConfigGetStringValue].
class RemoteConfigGetStringValueFamily extends Family<AsyncValue<String>> {
  /// See also [remoteConfigGetStringValue].
  const RemoteConfigGetStringValueFamily();

  /// See also [remoteConfigGetStringValue].
  RemoteConfigGetStringValueProvider call({
    required String key,
    required String defaultValue,
  }) {
    return RemoteConfigGetStringValueProvider(
      key: key,
      defaultValue: defaultValue,
    );
  }

  @override
  RemoteConfigGetStringValueProvider getProviderOverride(
    covariant RemoteConfigGetStringValueProvider provider,
  ) {
    return call(key: provider.key, defaultValue: provider.defaultValue);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'remoteConfigGetStringValueProvider';
}

/// See also [remoteConfigGetStringValue].
class RemoteConfigGetStringValueProvider
    extends AutoDisposeFutureProvider<String> {
  /// See also [remoteConfigGetStringValue].
  RemoteConfigGetStringValueProvider({
    required String key,
    required String defaultValue,
  }) : this._internal(
         (ref) => remoteConfigGetStringValue(
           ref as RemoteConfigGetStringValueRef,
           key: key,
           defaultValue: defaultValue,
         ),
         from: remoteConfigGetStringValueProvider,
         name: r'remoteConfigGetStringValueProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$remoteConfigGetStringValueHash,
         dependencies: RemoteConfigGetStringValueFamily._dependencies,
         allTransitiveDependencies:
             RemoteConfigGetStringValueFamily._allTransitiveDependencies,
         key: key,
         defaultValue: defaultValue,
       );

  RemoteConfigGetStringValueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.defaultValue,
  }) : super.internal();

  final String key;
  final String defaultValue;

  @override
  Override overrideWith(
    FutureOr<String> Function(RemoteConfigGetStringValueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoteConfigGetStringValueProvider._internal(
        (ref) => create(ref as RemoteConfigGetStringValueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        defaultValue: defaultValue,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _RemoteConfigGetStringValueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoteConfigGetStringValueProvider &&
        other.key == key &&
        other.defaultValue == defaultValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, defaultValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RemoteConfigGetStringValueRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `defaultValue` of this provider.
  String get defaultValue;
}

class _RemoteConfigGetStringValueProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with RemoteConfigGetStringValueRef {
  _RemoteConfigGetStringValueProviderElement(super.provider);

  @override
  String get key => (origin as RemoteConfigGetStringValueProvider).key;
  @override
  String get defaultValue =>
      (origin as RemoteConfigGetStringValueProvider).defaultValue;
}

String _$remoteConfigGetIntValueHash() =>
    r'0a54e030bfd45d1c3fedd46e5a4bef6d0663e59d';

/// See also [remoteConfigGetIntValue].
@ProviderFor(remoteConfigGetIntValue)
const remoteConfigGetIntValueProvider = RemoteConfigGetIntValueFamily();

/// See also [remoteConfigGetIntValue].
class RemoteConfigGetIntValueFamily extends Family<AsyncValue<int>> {
  /// See also [remoteConfigGetIntValue].
  const RemoteConfigGetIntValueFamily();

  /// See also [remoteConfigGetIntValue].
  RemoteConfigGetIntValueProvider call({
    required String key,
    required int defaultValue,
  }) {
    return RemoteConfigGetIntValueProvider(
      key: key,
      defaultValue: defaultValue,
    );
  }

  @override
  RemoteConfigGetIntValueProvider getProviderOverride(
    covariant RemoteConfigGetIntValueProvider provider,
  ) {
    return call(key: provider.key, defaultValue: provider.defaultValue);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'remoteConfigGetIntValueProvider';
}

/// See also [remoteConfigGetIntValue].
class RemoteConfigGetIntValueProvider extends AutoDisposeFutureProvider<int> {
  /// See also [remoteConfigGetIntValue].
  RemoteConfigGetIntValueProvider({
    required String key,
    required int defaultValue,
  }) : this._internal(
         (ref) => remoteConfigGetIntValue(
           ref as RemoteConfigGetIntValueRef,
           key: key,
           defaultValue: defaultValue,
         ),
         from: remoteConfigGetIntValueProvider,
         name: r'remoteConfigGetIntValueProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$remoteConfigGetIntValueHash,
         dependencies: RemoteConfigGetIntValueFamily._dependencies,
         allTransitiveDependencies:
             RemoteConfigGetIntValueFamily._allTransitiveDependencies,
         key: key,
         defaultValue: defaultValue,
       );

  RemoteConfigGetIntValueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.defaultValue,
  }) : super.internal();

  final String key;
  final int defaultValue;

  @override
  Override overrideWith(
    FutureOr<int> Function(RemoteConfigGetIntValueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoteConfigGetIntValueProvider._internal(
        (ref) => create(ref as RemoteConfigGetIntValueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        defaultValue: defaultValue,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _RemoteConfigGetIntValueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoteConfigGetIntValueProvider &&
        other.key == key &&
        other.defaultValue == defaultValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, defaultValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RemoteConfigGetIntValueRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `defaultValue` of this provider.
  int get defaultValue;
}

class _RemoteConfigGetIntValueProviderElement
    extends AutoDisposeFutureProviderElement<int>
    with RemoteConfigGetIntValueRef {
  _RemoteConfigGetIntValueProviderElement(super.provider);

  @override
  String get key => (origin as RemoteConfigGetIntValueProvider).key;
  @override
  int get defaultValue =>
      (origin as RemoteConfigGetIntValueProvider).defaultValue;
}

String _$remoteConfigGetDoubleValueHash() =>
    r'2977c64cb3a3ec6c59f4c85c64c749f79b4ca9ca';

/// See also [remoteConfigGetDoubleValue].
@ProviderFor(remoteConfigGetDoubleValue)
const remoteConfigGetDoubleValueProvider = RemoteConfigGetDoubleValueFamily();

/// See also [remoteConfigGetDoubleValue].
class RemoteConfigGetDoubleValueFamily extends Family<AsyncValue<double>> {
  /// See also [remoteConfigGetDoubleValue].
  const RemoteConfigGetDoubleValueFamily();

  /// See also [remoteConfigGetDoubleValue].
  RemoteConfigGetDoubleValueProvider call({
    required String key,
    required double defaultValue,
  }) {
    return RemoteConfigGetDoubleValueProvider(
      key: key,
      defaultValue: defaultValue,
    );
  }

  @override
  RemoteConfigGetDoubleValueProvider getProviderOverride(
    covariant RemoteConfigGetDoubleValueProvider provider,
  ) {
    return call(key: provider.key, defaultValue: provider.defaultValue);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'remoteConfigGetDoubleValueProvider';
}

/// See also [remoteConfigGetDoubleValue].
class RemoteConfigGetDoubleValueProvider
    extends AutoDisposeFutureProvider<double> {
  /// See also [remoteConfigGetDoubleValue].
  RemoteConfigGetDoubleValueProvider({
    required String key,
    required double defaultValue,
  }) : this._internal(
         (ref) => remoteConfigGetDoubleValue(
           ref as RemoteConfigGetDoubleValueRef,
           key: key,
           defaultValue: defaultValue,
         ),
         from: remoteConfigGetDoubleValueProvider,
         name: r'remoteConfigGetDoubleValueProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$remoteConfigGetDoubleValueHash,
         dependencies: RemoteConfigGetDoubleValueFamily._dependencies,
         allTransitiveDependencies:
             RemoteConfigGetDoubleValueFamily._allTransitiveDependencies,
         key: key,
         defaultValue: defaultValue,
       );

  RemoteConfigGetDoubleValueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.defaultValue,
  }) : super.internal();

  final String key;
  final double defaultValue;

  @override
  Override overrideWith(
    FutureOr<double> Function(RemoteConfigGetDoubleValueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoteConfigGetDoubleValueProvider._internal(
        (ref) => create(ref as RemoteConfigGetDoubleValueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        defaultValue: defaultValue,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<double> createElement() {
    return _RemoteConfigGetDoubleValueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoteConfigGetDoubleValueProvider &&
        other.key == key &&
        other.defaultValue == defaultValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, defaultValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RemoteConfigGetDoubleValueRef on AutoDisposeFutureProviderRef<double> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `defaultValue` of this provider.
  double get defaultValue;
}

class _RemoteConfigGetDoubleValueProviderElement
    extends AutoDisposeFutureProviderElement<double>
    with RemoteConfigGetDoubleValueRef {
  _RemoteConfigGetDoubleValueProviderElement(super.provider);

  @override
  String get key => (origin as RemoteConfigGetDoubleValueProvider).key;
  @override
  double get defaultValue =>
      (origin as RemoteConfigGetDoubleValueProvider).defaultValue;
}

String _$remoteConfigGetBoolValueHash() =>
    r'431f5b854d64c1f00ea42c0098bf01d630305990';

/// See also [remoteConfigGetBoolValue].
@ProviderFor(remoteConfigGetBoolValue)
const remoteConfigGetBoolValueProvider = RemoteConfigGetBoolValueFamily();

/// See also [remoteConfigGetBoolValue].
class RemoteConfigGetBoolValueFamily extends Family<AsyncValue<bool>> {
  /// See also [remoteConfigGetBoolValue].
  const RemoteConfigGetBoolValueFamily();

  /// See also [remoteConfigGetBoolValue].
  RemoteConfigGetBoolValueProvider call({
    required String key,
    required bool defaultValue,
  }) {
    return RemoteConfigGetBoolValueProvider(
      key: key,
      defaultValue: defaultValue,
    );
  }

  @override
  RemoteConfigGetBoolValueProvider getProviderOverride(
    covariant RemoteConfigGetBoolValueProvider provider,
  ) {
    return call(key: provider.key, defaultValue: provider.defaultValue);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'remoteConfigGetBoolValueProvider';
}

/// See also [remoteConfigGetBoolValue].
class RemoteConfigGetBoolValueProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [remoteConfigGetBoolValue].
  RemoteConfigGetBoolValueProvider({
    required String key,
    required bool defaultValue,
  }) : this._internal(
         (ref) => remoteConfigGetBoolValue(
           ref as RemoteConfigGetBoolValueRef,
           key: key,
           defaultValue: defaultValue,
         ),
         from: remoteConfigGetBoolValueProvider,
         name: r'remoteConfigGetBoolValueProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$remoteConfigGetBoolValueHash,
         dependencies: RemoteConfigGetBoolValueFamily._dependencies,
         allTransitiveDependencies:
             RemoteConfigGetBoolValueFamily._allTransitiveDependencies,
         key: key,
         defaultValue: defaultValue,
       );

  RemoteConfigGetBoolValueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.defaultValue,
  }) : super.internal();

  final String key;
  final bool defaultValue;

  @override
  Override overrideWith(
    FutureOr<bool> Function(RemoteConfigGetBoolValueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoteConfigGetBoolValueProvider._internal(
        (ref) => create(ref as RemoteConfigGetBoolValueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        defaultValue: defaultValue,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _RemoteConfigGetBoolValueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoteConfigGetBoolValueProvider &&
        other.key == key &&
        other.defaultValue == defaultValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, defaultValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RemoteConfigGetBoolValueRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `defaultValue` of this provider.
  bool get defaultValue;
}

class _RemoteConfigGetBoolValueProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with RemoteConfigGetBoolValueRef {
  _RemoteConfigGetBoolValueProviderElement(super.provider);

  @override
  String get key => (origin as RemoteConfigGetBoolValueProvider).key;
  @override
  bool get defaultValue =>
      (origin as RemoteConfigGetBoolValueProvider).defaultValue;
}

String _$remoteConfigValuesHash() =>
    r'8ac9b7df8419123d583bd4d73cf062047e755cbc';

/// See also [remoteConfigValues].
@ProviderFor(remoteConfigValues)
final remoteConfigValuesProvider =
    AutoDisposeStreamProvider<Map<String, RemoteConfigValue>>.internal(
      remoteConfigValues,
      name: r'remoteConfigValuesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$remoteConfigValuesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RemoteConfigValuesRef =
    AutoDisposeStreamProviderRef<Map<String, RemoteConfigValue>>;
String _$remoteConfigValuesEmailHash() =>
    r'70c15c3ee82652c166123e2a68a4cc8ecc6a2de4';

/// See also [remoteConfigValuesEmail].
@ProviderFor(remoteConfigValuesEmail)
final remoteConfigValuesEmailProvider = AutoDisposeProvider<String>.internal(
  remoteConfigValuesEmail,
  name: r'remoteConfigValuesEmailProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteConfigValuesEmailHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RemoteConfigValuesEmailRef = AutoDisposeProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
