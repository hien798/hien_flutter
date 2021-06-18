import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../share/utils/utils.dart';

class UserLocalStorage {
  static const String tokenKey = 'token';
  static const String refreshTokenKey = 'refreshToken';
  final _saveDebouncer = Debouncer(Duration(milliseconds: 500));
  final _storage = FlutterSecureStorage();

  load() async {
    _token = (await _storage.read(key: tokenKey)) ?? '';
    _refreshToken = (await _storage.read(key: refreshTokenKey)) ?? '';
  }

  String _token = '';
  String get token => _token;
  String _refreshToken = '';
  String get refreshToken => _refreshToken;


  set token(String value) {
    _token = value;
    _scheduleSave(tokenKey, value);
  }

  set refreshToken(String value) {
    _refreshToken = value;
    _scheduleSave(refreshTokenKey, value);
  }

  void _scheduleSave(String key, String value) {
    _saveDebouncer.call(() {
      _storage.write(key: key, value: value);
    });
  }
}
