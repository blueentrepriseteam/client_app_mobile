import 'package:client_app_mobile/config/log/crashlytics.dart';
import 'package:client_app_mobile/config/log/logger.dart';
import 'package:client_app_mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureLogging();
    await configureCrashlytics();
    _initialized = true;
  }
}
