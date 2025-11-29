// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Bleu';

  @override
  String get signinTitle => 'Connexion';

  @override
  String get signinEmailLabel => 'Email';

  @override
  String get signinEmailHint => 'magatte.dev@gmail.com';

  @override
  String get signinPasswordLabel => 'Mot de passe';

  @override
  String get signinPasswordHint => '********';

  @override
  String get signinRememberMe => 'Se souvenir de moi';

  @override
  String get signinForgotPassword => 'Mot de passe oublié ?';

  @override
  String get signinButton => 'Se connecter';

  @override
  String get signinOrLabel => 'Ou';

  @override
  String get signinNoAccount => 'Pas encore de compte ?';

  @override
  String get signinSignUp => 'S\'inscrire';

  @override
  String get socialContinueWithFacebook => 'Continuer avec Facebook';

  @override
  String get socialContinueWithGoogle => 'Continuer avec Google';

  @override
  String get socialContinueWithApple => 'Continuer avec Apple';

  @override
  String get socialFacebook => 'Facebook';

  @override
  String get socialGoogle => 'Google';

  @override
  String get socialApple => 'Apple';
}
