# loggerx2

Colorful, neat, and intuitive logger library for creating simple log messages with various urgency levels.

## Features

- Log messages with different levels: info, debug, warning, error, and success.
- Enable or disable the logger.
- Filter messages based on the log level.

## Getting Started

To start using the `loggerx2` package, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  loggerx2: ^1.0.0
```

Then, run `pub get` to install the package.

## Usage

Here is a simple example of how to use the `loggerx2` package:

```dart
import 'package:loggerx2/loggerx.dart';

void main() {
    final logger = LoggerX();
    
    logger.info('This is an info message');
    logger.debug('This is a debug message');
    logger.warning('This is a warning message');
    logger.error('This is an error message');
    logger.success('This is a success message');
}
```

## Additional Information

For more information, visit the repository: https://github.com/unix14/loggerx.

## License

This project is licensed under the MIT License. See the LICENSE file for details.