// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Blue';

  @override
  String get signinTitle => 'Login';

  @override
  String get signinEmailLabel => 'Email';

  @override
  String get signinEmailHint => 'magatte.dev@gmail.com';

  @override
  String get signinPasswordLabel => 'Password';

  @override
  String get signinPasswordHint => '********';

  @override
  String get signinRememberMe => 'Remember me';

  @override
  String get signinForgotPassword => 'Forgot Password?';

  @override
  String get signinButton => 'Log In';

  @override
  String get signinOrLabel => 'Or';

  @override
  String get signinNoAccount => 'Don\'t have an account?';

  @override
  String get signinSignUp => 'Sign Up';

  @override
  String get socialContinueWithFacebook => 'Continue with Facebook';

  @override
  String get socialContinueWithGoogle => 'Continue with Google';

  @override
  String get socialContinueWithApple => 'Continue with Apple';

  @override
  String get socialFacebook => 'Facebook';

  @override
  String get socialGoogle => 'Google';

  @override
  String get socialApple => 'Apple';
}
