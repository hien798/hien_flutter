import '../../models/model.dart';
import '../data.dart';

class UserRepository {
  final AppApi api;
  final UserRestClient userApi;
  final UserLocalStorage userStorage;

  UserRepository({
    required this.api,
    required this.userApi,
    required this.userStorage,
  });

  Future<UserModel> login(LoginUserRequest user) async {
    try {
      final result = await userApi.login(user);
      userStorage.token = result.token;
      userStorage.refreshToken = result.refreshToken;
      return UserModel(data: User.fromJson(result.user.toJson()));
    } catch (err) {
      return UserModel(message: 'Invalid Email or Password');
    }
  }

  Future<UserModel?> getCurrentUser() async {
    try {
      final result = await userApi.getCurrentUser();
      return UserModel(data: User.fromJson(result.user.toJson()));
    } catch (err) {
      return UserModel(message: 'Invalid Email or Password');
    }
  }

  logout(){}

  Future<void> setAccessToken(String accessToken) async {
    userStorage.token = accessToken;
  }

  getAccessToken() {
    return userStorage.token;
  }

  isAuthenticated() {
    final token = getAccessToken();
    return token != null;
  }
}