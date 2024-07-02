import 'package:ai_trade/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstUserManager {
  static final SharedPreferences _sharedPref = locator.get();

  static Future<bool> read() async {
    bool status = _sharedPref.getBool('first') ?? true;
    return status;
  }

  static Future<void> change(bool status) async {
    _sharedPref.setBool('first', status);
  }
}
