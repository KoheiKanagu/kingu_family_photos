// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authSignInHash() => r'cec6a6ee3052e23631e1c211ee1dc952236d3dc0';

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

/// See also [authSignIn].
@ProviderFor(authSignIn)
const authSignInProvider = AuthSignInFamily();

/// See also [authSignIn].
class AuthSignInFamily extends Family<AsyncValue<void>> {
  /// See also [authSignIn].
  const AuthSignInFamily();

  /// See also [authSignIn].
  AuthSignInProvider call({required String password}) {
    return AuthSignInProvider(password: password);
  }

  @override
  AuthSignInProvider getProviderOverride(
    covariant AuthSignInProvider provider,
  ) {
    return call(password: provider.password);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authSignInProvider';
}

/// See also [authSignIn].
class AuthSignInProvider extends AutoDisposeFutureProvider<void> {
  /// See also [authSignIn].
  AuthSignInProvider({required String password})
    : this._internal(
        (ref) => authSignIn(ref as AuthSignInRef, password: password),
        from: authSignInProvider,
        name: r'authSignInProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$authSignInHash,
        dependencies: AuthSignInFamily._dependencies,
        allTransitiveDependencies: AuthSignInFamily._allTransitiveDependencies,
        password: password,
      );

  AuthSignInProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.password,
  }) : super.internal();

  final String password;

  @override
  Override overrideWith(
    FutureOr<void> Function(AuthSignInRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthSignInProvider._internal(
        (ref) => create(ref as AuthSignInRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AuthSignInProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthSignInProvider && other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AuthSignInRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `password` of this provider.
  String get password;
}

class _AuthSignInProviderElement extends AutoDisposeFutureProviderElement<void>
    with AuthSignInRef {
  _AuthSignInProviderElement(super.provider);

  @override
  String get password => (origin as AuthSignInProvider).password;
}

String _$authSignOutHash() => r'e8c702860ae9a069a262135b365e84e5cc25da7a';

/// See also [authSignOut].
@ProviderFor(authSignOut)
final authSignOutProvider = AutoDisposeFutureProvider<void>.internal(
  authSignOut,
  name: r'authSignOutProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authSignOutHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AuthSignOutRef = AutoDisposeFutureProviderRef<void>;
String _$authSignOutWhenFirstRunHash() =>
    r'4a410d91777a74d0efa024bb26be5fa69c910534';

/// アプリが初回起動かチェックして、初回起動の場合はサインアウトを実行する
///
/// Firebase Authの認証情報はiCloudでバックアップされるため、
/// アプリを再インストールしたり、別の端末であっても認証情報が復元されてしまう可能性がある
///
/// Copied from [authSignOutWhenFirstRun].
@ProviderFor(authSignOutWhenFirstRun)
final authSignOutWhenFirstRunProvider =
    AutoDisposeFutureProvider<void>.internal(
      authSignOutWhenFirstRun,
      name: r'authSignOutWhenFirstRunProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$authSignOutWhenFirstRunHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AuthSignOutWhenFirstRunRef = AutoDisposeFutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
