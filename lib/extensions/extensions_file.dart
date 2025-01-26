
import 'package:ansi_styles/ansi_styles.dart';
import 'package:loggerx2/models/log_level.dart';

//*** Extensions ***//

/// This extension is used to add a name property to the LogLevel enum
/// The name property returns the name of the log level
/// For example, LogLevel.debug.name returns 'DEBUG'
extension LogLevelExtension on LogLevel {
  String get name {
    return toString().toUpperCase();
  }
}

/// This extension is used to add a getColoredString method to the String class
/// The getColoredString method returns the string with the color based on the log level
extension StringColorExtension on String {
  String getColoredString(LogLevel logLevel) {
    var logText = '${logLevel.name}: $this';
    switch(logLevel) {
      case LogLevel.info:
        return logText;
      case LogLevel.debug:
        return AnsiStyles.blue(logText);
      case LogLevel.warning:
        return AnsiStyles.yellow(logText);
      case LogLevel.error:
        return AnsiStyles.red(logText);
      case LogLevel.success:
        return AnsiStyles.green(logText);
    }
  }
}
