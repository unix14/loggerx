
import 'package:loggerx2/extensions/extensions_file.dart';
import 'package:loggerx2/loggerx.dart';

class Logger extends BaseLogger {

  //*** Properties ***//
  bool isActive = true;
  LogLevel minimumLevel = LogLevel.info;

  //*** Constructor ***//
  Logger({this.isActive = true, this.minimumLevel = LogLevel.info}) {
    print('Logger constructor'.getColoredString(LogLevel.success));
  }

  //*** Public methods ***//
  @override
  void log(LogLevel logLevel, String message) {
    if(!isActive) return;
    if(logLevel.index < minimumLevel.index) return;
    print(message.getColoredString(logLevel));
  }

  @override
  void filter(LogLevel logLevel) {
    minimumLevel = logLevel;
  }

  @override
  void removeFilter() {
    minimumLevel = LogLevel.info;
  }
}