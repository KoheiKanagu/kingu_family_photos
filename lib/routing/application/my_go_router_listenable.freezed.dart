// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_go_router_listenable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyGoRouterListenable implements DiagnosticableTreeMixin {

 bool get signedIn; AsyncValue<void>? get appStartupState;
/// Create a copy of MyGoRouterListenable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyGoRouterListenableCopyWith<MyGoRouterListenable> get copyWith => _$MyGoRouterListenableCopyWithImpl<MyGoRouterListenable>(this as MyGoRouterListenable, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyGoRouterListenable'))
    ..add(DiagnosticsProperty('signedIn', signedIn))..add(DiagnosticsProperty('appStartupState', appStartupState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGoRouterListenable&&(identical(other.signedIn, signedIn) || other.signedIn == signedIn)&&(identical(other.appStartupState, appStartupState) || other.appStartupState == appStartupState));
}


@override
int get hashCode => Object.hash(runtimeType,signedIn,appStartupState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyGoRouterListenable(signedIn: $signedIn, appStartupState: $appStartupState)';
}


}

/// @nodoc
abstract mixin class $MyGoRouterListenableCopyWith<$Res>  {
  factory $MyGoRouterListenableCopyWith(MyGoRouterListenable value, $Res Function(MyGoRouterListenable) _then) = _$MyGoRouterListenableCopyWithImpl;
@useResult
$Res call({
 bool signedIn, AsyncValue<void>? appStartupState
});




}
/// @nodoc
class _$MyGoRouterListenableCopyWithImpl<$Res>
    implements $MyGoRouterListenableCopyWith<$Res> {
  _$MyGoRouterListenableCopyWithImpl(this._self, this._then);

  final MyGoRouterListenable _self;
  final $Res Function(MyGoRouterListenable) _then;

/// Create a copy of MyGoRouterListenable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signedIn = null,Object? appStartupState = freezed,}) {
  return _then(_self.copyWith(
signedIn: null == signedIn ? _self.signedIn : signedIn // ignore: cast_nullable_to_non_nullable
as bool,appStartupState: freezed == appStartupState ? _self.appStartupState : appStartupState // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyGoRouterListenable].
extension MyGoRouterListenablePatterns on MyGoRouterListenable {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyGoRouterListenable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyGoRouterListenable() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyGoRouterListenable value)  $default,){
final _that = this;
switch (_that) {
case _MyGoRouterListenable():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyGoRouterListenable value)?  $default,){
final _that = this;
switch (_that) {
case _MyGoRouterListenable() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool signedIn,  AsyncValue<void>? appStartupState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyGoRouterListenable() when $default != null:
return $default(_that.signedIn,_that.appStartupState);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool signedIn,  AsyncValue<void>? appStartupState)  $default,) {final _that = this;
switch (_that) {
case _MyGoRouterListenable():
return $default(_that.signedIn,_that.appStartupState);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool signedIn,  AsyncValue<void>? appStartupState)?  $default,) {final _that = this;
switch (_that) {
case _MyGoRouterListenable() when $default != null:
return $default(_that.signedIn,_that.appStartupState);case _:
  return null;

}
}

}

/// @nodoc


class _MyGoRouterListenable with DiagnosticableTreeMixin implements MyGoRouterListenable {
  const _MyGoRouterListenable({this.signedIn = false, this.appStartupState});
  

@override@JsonKey() final  bool signedIn;
@override final  AsyncValue<void>? appStartupState;

/// Create a copy of MyGoRouterListenable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyGoRouterListenableCopyWith<_MyGoRouterListenable> get copyWith => __$MyGoRouterListenableCopyWithImpl<_MyGoRouterListenable>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyGoRouterListenable'))
    ..add(DiagnosticsProperty('signedIn', signedIn))..add(DiagnosticsProperty('appStartupState', appStartupState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyGoRouterListenable&&(identical(other.signedIn, signedIn) || other.signedIn == signedIn)&&(identical(other.appStartupState, appStartupState) || other.appStartupState == appStartupState));
}


@override
int get hashCode => Object.hash(runtimeType,signedIn,appStartupState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyGoRouterListenable(signedIn: $signedIn, appStartupState: $appStartupState)';
}


}

/// @nodoc
abstract mixin class _$MyGoRouterListenableCopyWith<$Res> implements $MyGoRouterListenableCopyWith<$Res> {
  factory _$MyGoRouterListenableCopyWith(_MyGoRouterListenable value, $Res Function(_MyGoRouterListenable) _then) = __$MyGoRouterListenableCopyWithImpl;
@override @useResult
$Res call({
 bool signedIn, AsyncValue<void>? appStartupState
});




}
/// @nodoc
class __$MyGoRouterListenableCopyWithImpl<$Res>
    implements _$MyGoRouterListenableCopyWith<$Res> {
  __$MyGoRouterListenableCopyWithImpl(this._self, this._then);

  final _MyGoRouterListenable _self;
  final $Res Function(_MyGoRouterListenable) _then;

/// Create a copy of MyGoRouterListenable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signedIn = null,Object? appStartupState = freezed,}) {
  return _then(_MyGoRouterListenable(
signedIn: null == signedIn ? _self.signedIn : signedIn // ignore: cast_nullable_to_non_nullable
as bool,appStartupState: freezed == appStartupState ? _self.appStartupState : appStartupState // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,
  ));
}


}

// dart format on
