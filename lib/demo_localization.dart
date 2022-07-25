import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

import 'demo_locali.dart';

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      DemoLocalizations.languages().contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<DemoLocalizations> old) =>
      false;
}
