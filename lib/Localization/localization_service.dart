import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Health/Language/roman.dart';
import '../Health/Language/english.dart';

var textDirection = TextDirection.ltr;
var textDirectionFix = TextDirection.ltr;
var textAlign = TextAlign.left;
class LocalizationService extends Translations {
  // Default locale
  static const locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static const fallbackLocale = Locale('ru', 'RU');

  static final languages = [
    'English',
    'Roman',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    const Locale('en', 'US'),
    const Locale('ru', 'RU'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS, // lang/en_us.dart
    'ru_RU': ruRU, // lang/tr_tr.dart
  };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    if(lang=="English"){
      textAlign = TextAlign.left;
      textDirection=TextDirection.ltr;
    }
    else{
      textAlign = TextAlign.right;
      textDirection=TextDirection.rtl;
    }
    final locale = _getLocaleFromLanguage(lang);

    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < languages.length; i++) {
      if (lang == languages[i]) return locales[i];
    }
    return Get.locale;
  }
}
