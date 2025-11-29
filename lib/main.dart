import 'package:flutter/material.dart';
import 'package:client_app_mobile/app.dart';
import 'package:client_app_mobile/config/app_config.dart';

Future<void> main() async {
  await AppConfig.init();
  runApp(const MyApp());
}
