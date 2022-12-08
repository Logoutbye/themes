import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier{
  bool is_home_screen = true;
  bool get  getScreenStatus {
    return is_home_screen;
}
  Future<void> SetThemeStatus(bool isHomeScreen) async {
    is_home_screen =isHomeScreen;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('is_home_screen', isHomeScreen);

  }
}