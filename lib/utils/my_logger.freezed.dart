// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_logger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WriteLogData implements DiagnosticableTreeMixin {

 LogLevel get level; Json get log;

  /// Serializes this WriteLogData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WriteLogData'))
    ..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('log', log));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WriteLogData&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.log, log));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,const DeepCollectionEquality().hash(log));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WriteLogData(level: $level, log: $log)';
}


}




/// Adds pattern-matching-related methods to [WriteLogData].
extension WriteLogDataPatterns on WriteLogData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WriteLogData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WriteLogData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WriteLogData value)  $default,){
final _that = this;
switch (_that) {
case _WriteLogData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WriteLogData value)?  $default,){
final _that = this;
switch (_that) {
case _WriteLogData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LogLevel level,  Json log)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WriteLogData() when $default != null:
return $default(_that.level,_that.log);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LogLevel level,  Json log)  $default,) {final _that = this;
switch (_that) {
case _WriteLogData():
return $default(_that.level,_that.log);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LogLevel level,  Json log)?  $default,) {final _that = this;
switch (_that) {
case _WriteLogData() when $default != null:
return $default(_that.level,_that.log);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WriteLogData with DiagnosticableTreeMixin implements WriteLogData {
  const _WriteLogData({required this.level, required final  Json log}): _log = log;
  factory _WriteLogData.fromJson(Map<String, dynamic> json) => _$WriteLogDataFromJson(json);

@override final  LogLevel level;
 final  Json _log;
@override Json get log {
  if (_log is EqualUnmodifiableMapView) return _log;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_log);
}



@override
Map<String, dynamic> toJson() {
  return _$WriteLogDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WriteLogData'))
    ..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('log', log));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WriteLogData&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other._log, _log));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,const DeepCollectionEquality().hash(_log));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WriteLogData(level: $level, log: $log)';
}


}





/// @nodoc
mixin _$WriteLogRequest implements DiagnosticableTreeMixin {

 List<WriteLogData> get logs;

  /// Serializes this WriteLogRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WriteLogRequest'))
    ..add(DiagnosticsProperty('logs', logs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WriteLogRequest&&const DeepCollectionEquality().equals(other.logs, logs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(logs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WriteLogRequest(logs: $logs)';
}


}




/// Adds pattern-matching-related methods to [WriteLogRequest].
extension WriteLogRequestPatterns on WriteLogRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WriteLogRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WriteLogRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WriteLogRequest value)  $default,){
final _that = this;
switch (_that) {
case _WriteLogRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WriteLogRequest value)?  $default,){
final _that = this;
switch (_that) {
case _WriteLogRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WriteLogData> logs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WriteLogRequest() when $default != null:
return $default(_that.logs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WriteLogData> logs)  $default,) {final _that = this;
switch (_that) {
case _WriteLogRequest():
return $default(_that.logs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WriteLogData> logs)?  $default,) {final _that = this;
switch (_that) {
case _WriteLogRequest() when $default != null:
return $default(_that.logs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WriteLogRequest with DiagnosticableTreeMixin implements WriteLogRequest {
  const _WriteLogRequest({required final  List<WriteLogData> logs}): _logs = logs;
  factory _WriteLogRequest.fromJson(Map<String, dynamic> json) => _$WriteLogRequestFromJson(json);

 final  List<WriteLogData> _logs;
@override List<WriteLogData> get logs {
  if (_logs is EqualUnmodifiableListView) return _logs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_logs);
}



@override
Map<String, dynamic> toJson() {
  return _$WriteLogRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WriteLogRequest'))
    ..add(DiagnosticsProperty('logs', logs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WriteLogRequest&&const DeepCollectionEquality().equals(other._logs, _logs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_logs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WriteLogRequest(logs: $logs)';
}


}




// dart format on
