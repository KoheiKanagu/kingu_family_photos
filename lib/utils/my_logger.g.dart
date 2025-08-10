// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_logger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WriteLogData _$WriteLogDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_WriteLogData', json, ($checkedConvert) {
      final val = _WriteLogData(
        level: $checkedConvert(
          'level',
          (v) => $enumDecode(_$LogLevelEnumMap, v),
        ),
        log: $checkedConvert('log', (v) => v as Map<String, dynamic>),
      );
      return val;
    });

Map<String, dynamic> _$WriteLogDataToJson(_WriteLogData instance) =>
    <String, dynamic>{
      'level': _$LogLevelEnumMap[instance.level]!,
      'log': instance.log,
    };

const _$LogLevelEnumMap = {
  LogLevel.error: 'error',
  LogLevel.critical: 'critical',
  LogLevel.info: 'info',
  LogLevel.debug: 'debug',
  LogLevel.verbose: 'verbose',
  LogLevel.warning: 'warning',
};

_WriteLogRequest _$WriteLogRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_WriteLogRequest', json, ($checkedConvert) {
      final val = _WriteLogRequest(
        logs: $checkedConvert(
          'logs',
          (v) => (v as List<dynamic>)
              .map((e) => WriteLogData.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$WriteLogRequestToJson(_WriteLogRequest instance) =>
    <String, dynamic>{'logs': instance.logs.map((e) => e.toJson()).toList()};
