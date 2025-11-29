import 'package:client_app_mobile/config/lang/lang_config.dart';
import 'package:client_app_mobile/config/theme/app_theme.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:client_app_mobile/router/app_router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Blue",
      onGenerateTitle: (context) => context.l10n.appTitle,
      theme: AppTheme.light,
      localizationsDelegates: LangConfig.localizationsDelegates,
      supportedLocales: LangConfig.supportedLocales,
      routerConfig: appRouter,
    );
  }
}
