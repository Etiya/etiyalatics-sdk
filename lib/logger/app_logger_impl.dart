import 'package:Etiyalytics_sdk/logger/app_logger.dart';
import 'package:logger/logger.dart';

class AppLoggerImpl extends AppLogger {
  AppLoggerImpl._();
  static final log = AppLoggerImpl._();
  final _log = Logger(
      level: Level.wtf,
      printer: PrettyPrinter(
        colors: true,
        printTime: true,
        printEmojis: true,
      ));

  @override
  void d(message, [error, StackTrace? stackTrace]) {
    _log.d(message, error, stackTrace);
  }

  @override
  void e(message, [error, StackTrace? stackTrace]) {
    _log.d(message, error, stackTrace);
  }

  @override
  void i(message, [error, StackTrace? stackTrace]) {
    _log.d(message, error, stackTrace);
  }
}
