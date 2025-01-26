//*** Base Logger Class ***//

import 'package:loggerx2/models/log_level.dart';

/// The BaseLogger class is used to log messages to the console
/// It has four methods: debug, error, warning, info
/// Each method logs the message with a different log level
/// The log method is used to log the message with the specified log level
/// The isActive property is used to enable or disable the logger
/// If the logger is disabled, the log method does nothing
/// @param isActive: A boolean value that specifies if the logger is active
/// @param minimumLevel: A LogLevel value that specifies the minimum log level
/// The logger will only log messages with a log level greater than or equal to the minimum level
/// The default value is LogLevel.debug
///
abstract class BaseLogger {

  void log(LogLevel logLevel, String message);
  void filter(LogLevel logLevel);
  void removeFilter();

  void info(String message) {
    log(LogLevel.info, message);
  }

  void debug(String message) {
    log(LogLevel.debug, message);
  }

  void warning(String message) {
    log(LogLevel.warning, message);
  }

  void error(String message) {
    log(LogLevel.error, message);
  }

  void success(String message) {
    log(LogLevel.success, message);
  }
}