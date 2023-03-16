import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  /// Set locale in provider based on languageCode passed. Also saves this
  /// language setting locally on device with SharedPreferences
  void setLocale(String languageCode) async {
    _locale = getLocale(languageCode);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', _locale?.languageCode ?? 'en');
    notifyListeners();
  }

  /// Returns Future<Locale> saved in SharedPreferences. If there is no
  /// saved one, defaults to english language
  Future<Locale> getInitialLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('languageCode') ?? 'en';
    return getLocale(languageCode);
  }

  /// Returns either Locale(languageCode) or Locale(languageCode, countryCode)
  /// based on passed languageCode string
  Locale getLocale(String languageCode) {
    switch (languageCode) {
      case 'en':
        return Locale(languageCode);
      case 'uk':
        return Locale(languageCode, 'UA');
      default:
        return Locale(languageCode);
    }
  }

  /// Set locale in provider to null
  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
