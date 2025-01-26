
// You can also inherit BaseLogger class and write your own custom logger

import 'package:loggerx2/loggerx.dart';

class CustomLogger extends BaseLogger {

  @override
  void log(LogLevel logLevel, String message) {
    // TODO: implement log
  }

  @override
  void filter(LogLevel logLevel) {
    // TODO: implement filter
  }

  @override
  void removeFilter() {
    // TODO: implement removeFilter
  }
}