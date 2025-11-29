import 'package:client_app_mobile/config/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/widgets/responsive.dart';

extension BuildContextX on BuildContext {
  /// Quick access to ThemeData
  ThemeData get theme => Theme.of(this);

  /// Private helper for Responsive instance
  Responsive get _responsive => Responsive(this);

  /// Vertical spacing based on screen height
  SizedBox vSpace(double factor) =>
      SizedBox(height: _responsive.sizeFromHeight(factor));

  /// Horizontal spacing based on screen height (if intended)
  SizedBox hSpace(double factor) =>
      SizedBox(width: _responsive.sizeFromHeight(factor));

  /// Screen height
  double get height => MediaQuery.of(this).size.height;

  /// Screen width
  double get width => MediaQuery.of(this).size.width;

  /// Height factor calculation
  double sizeFromHeight(double factor) => _responsive.sizeFromHeight(factor);

  /// Quick access to localization strings
  AppLocalizations get l10n => AppLocalizations.of(this);
}
