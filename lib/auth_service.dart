import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<void> register(
    String username,
    String password,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('username', username);
    await prefs.setString('password', password);
  }

  Future<bool> login(
    String username,
    String password,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    String? savedUsername = prefs.getString('username');
    String? savedPassword = prefs.getString('password');

    return username == savedUsername &&
        password == savedPassword;
  }

  Future<void> saveLogin() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('loggedIn', true);
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('loggedIn', false);
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool('loggedIn') ?? false;
  }
}