import 'package:flutter/cupertino.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      "home_page": "Home page",
      "personal_information": "Personal Information",
      "name": "Name",
      "name_hint": "Enter your name",
      "email": "Email",
      "email_hint": "Enter your email",
      "password": "Password",
      "submit_info": "Submit Info",
    },
    'fr': {
      "home_page": "Page d'accueil",
      "personal_information": "Information personnelle",
      "name": "Nom",
      "name_hint": "Entrez votre nom",
      "email": "Email",
      "email_hint": "Entrez votre email",
      "password": "Mot de passe",
      "submit_info": "soumettez vos informations",
    }
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String get home_page {
    return _localizedValues[locale.languageCode]!['home_page']!;
  }

  String get personal_information {
    return _localizedValues[locale.languageCode]!['personal_information']!;
  }

  String get name {
    return _localizedValues[locale.languageCode]!['name']!;
  }

  String get name_hint {
    return _localizedValues[locale.languageCode]!['name_hint']!;
  }

  String get email {
    return _localizedValues[locale.languageCode]!['email']!;
  }

  String get email_hint {
    return _localizedValues[locale.languageCode]!['email_hint']!;
  }

  String get password {
    return _localizedValues[locale.languageCode]!['password']!;
  }

  String get submit_info {
    return _localizedValues[locale.languageCode]!['submit_info']!;
  }
}
