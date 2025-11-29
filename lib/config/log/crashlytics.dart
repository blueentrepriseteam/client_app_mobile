import 'package:client_app_mobile/config/log/logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// Configures Firebase Crashlytics error reporting.
Future<void> configureCrashlytics() async {
  final crashlytics = FirebaseCrashlytics.instance;
  await crashlytics.setCrashlyticsCollectionEnabled(!kDebugMode);

  FlutterError.onError = crashlytics.recordFlutterError;
  PlatformDispatcher.instance.onError = (error, stack) {
    crashlytics.recordError(error, stack, fatal: true);
    appLogger.e('Uncaught platform error', error: error, stackTrace: stack);
    return true;
  };
}
