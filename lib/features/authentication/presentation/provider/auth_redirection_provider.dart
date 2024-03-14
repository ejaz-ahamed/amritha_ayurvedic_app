import 'package:amritha_ayurveda/core/widgets/splash_screen_widget.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/pages/login_page.dart';
import 'package:amritha_ayurveda/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  Widget _initialWidget = const SplashSrceen();
  Widget get initialWidget => _initialWidget;
  void authRedirect(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString("token") != null) {
      _initialWidget = const HomePage();
      notifyListeners();
    } else {
      _initialWidget = const LoginPage();
      notifyListeners();
    }
  }
}
