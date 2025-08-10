import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kingu_family_photos/constants/app_env.dart';
import 'package:kingu_family_photos/utils/typedefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

part 'my_logger.freezed.dart';
part 'my_logger.g.dart';

final Talker logger = TalkerFlutter.init(
  settings: TalkerSettings(
    useConsoleLogs: kAppEnvDev,
  ),
  observer: () {
    if (!kReleaseMode) {
      return null;
    }

    if (kIsWeb) {
      return WriteLogTalkerObserver();
    }
  }(),
);

class WriteLogTalkerObserver extends TalkerObserver {
  final List<WriteLogData> logBuffer = [];

  static const int _bufferSize = 64;

  Future<void> sendLog() async {
    await FirebaseFunctions.instanceFor(region: 'asia-northeast1')
        .httpsCallable('writeLog')
        .call<void>(WriteLogRequest(logs: logBuffer).toJson());
    logBuffer.clear();
  }

  @override
  void onError(TalkerError err) {
    logBuffer.add(
      WriteLogData(
        level: LogLevel.error,
        log: {
          'error': err.error.toString(),
          'stackTrace': err.stackTrace.toString(),
          'reason': err.message,
        },
      ),
    );
    sendLog();

    super.onError(err);
  }

  @override
  void onException(TalkerException err) {
    logBuffer.add(
      WriteLogData(
        level: LogLevel.error,
        log: {
          'exception': err.exception.toString(),
          'stackTrace': err.stackTrace.toString(),
          'reason': err.message,
        },
      ),
    );
    sendLog();

    super.onException(err);
  }

  @override
  void onLog(TalkerData log) {
    final data = log.generateTextMessage();

    logBuffer.add(
      WriteLogData(
        level: log.logLevel ?? LogLevel.verbose,
        log: {'text': data},
      ),
    );

    // バッファサイズを超えた場合は古いログを削除
    if (logBuffer.length > _bufferSize) {
      logBuffer.removeAt(0);
    }

    super.onLog(log);
  }
}

/// [Riverpod] logger on [Talker] base
final talkerRiverpodObserver = TalkerRiverpodObserver(
  talker: logger,
  settings: TalkerRiverpodLoggerSettings(
    providerFilter: (provider) {
      final hidden = {
        'firebaseUserProvider',
        'firebaseStorageGsFileDownloadUrlProvider',
      };

      if (hidden.contains(provider.name)) {
        return false;
      }

      return true;
    },
  ),
);

@Freezed(copyWith: false)
abstract class WriteLogData with _$WriteLogData {
  const factory WriteLogData({required LogLevel level, required Json log}) =
      _WriteLogData;

  factory WriteLogData.fromJson(Json json) => _$WriteLogDataFromJson(json);
}

@Freezed(copyWith: false)
abstract class WriteLogRequest with _$WriteLogRequest {
  const factory WriteLogRequest({required List<WriteLogData> logs}) =
      _WriteLogRequest;

  factory WriteLogRequest.fromJson(Json json) =>
      _$WriteLogRequestFromJson(json);
}
