import 'package:loggerx2/loggerx.dart';

// Log levels are sorted like this:
// info - Lowest log level possible
// debug
// warning
// error
// success - highest log level possible

void main() {
  Logger logger = Logger(isActive: true, minimumLevel: LogLevel.error);

  logger.error("This will be shown!");
  logger.info("This will not be shown"); // since minimumLevel is set to 'LogLevel.error' on line 12.

  // you can also use it like this:
  logger.log(LogLevel.success, "This will be shown also");

  // you can also filter like this:
  logger.filter(LogLevel.error);

  // and then ->
  logger.log(LogLevel.warning, "This will not be shown");
  logger.log(LogLevel.success, "This will be shown");

  // if you want to remove filter you can do it like this:
  logger.removeFilter();
}