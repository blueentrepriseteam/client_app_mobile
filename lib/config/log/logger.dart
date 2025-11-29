import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Shared logger instance for the app.
final Logger appLogger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 100,
    colors: !kReleaseMode,
    printEmojis: true,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);

/// Configure logger level depending on the build mode.
void configureLogging() {
  Logger.level = kReleaseMode ? Level.warning : Level.debug;
}
