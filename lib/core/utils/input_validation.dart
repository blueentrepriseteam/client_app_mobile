class InputValidation {
  static String? phoneValidation(String? str, String? message) {
    bool value = TextFieldValidation.isValidNumberPhone(str!);
    if (!value) {
      return message ?? 'Numéro téléphone invalide';
    }
    return null;
  }

  static String? emailValidation(String? str, String? message) {
    if (str!.isEmpty) {
      return null;
    }
    bool value = TextFieldValidation.isValidEmail(str.trim());
    if (!value) {
      return message ?? 'Email Invalide';
    }
    return null;
  }

  static String? passwordValidation(String? str, String? message) {
    bool value = TextFieldValidation.isEmpty(str);
    if (value) {
      return message ?? 'Mot de pass invalide';
    }
    return null;
  }

  static String? textValidation(String? str, String? message) {
    bool value = TextFieldValidation.isEmpty(str);
    if (value && str!.length < 3) {
      return message ?? 'Champs Obligatoire';
    }
    return null;
  }

  static String? numberValidation(String? str, String? message) {
    bool value = TextFieldValidation.isInt(str);
    if (value) {
      return null;
    }
    return message ?? 'Un nombre svp !';
  }
}

class TextFieldValidation {
  static bool isEmpty(String? text) {
    if (text!.isEmpty) {
      return true;
    }
    return false;
  }

  static bool isDouble(text) {
    try {
      double.parse(text);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool isInt(text) {
    try {
      int.parse(text);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool isValidEmail(String? string) {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(string.toString());
  }

  static bool isValidNumberPhone(String? string) {
    return RegExp(
      r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$',
    ).hasMatch(string.toString().trim());
  }

  static bool isValidRCCM(String? string) {
    return RegExp(
      r'^SN\s[A-Z]{3}\s\d{2}\s[B|P]\s\d{1,5}$',
    ).hasMatch(string.toString().trim());
  }

  static String? validateTextMethode(String? str) {
    var value = TextFieldValidation.isEmpty(str);
    if (value) {
      return 'Champs obligatoire';
    } else {
      if (str!.length < 2) {
        return 'Caratère < 2 invalide';
      }
    }
    return null;
  }

  static String? validateEmailMethode(String? str) {
    bool value = TextFieldValidation.isValidEmail(str);
    if (!value) {
      return "L'email est invalide";
    }
    return null;
  }
}
