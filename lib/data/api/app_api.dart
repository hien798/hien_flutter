import 'package:dio/dio.dart';
import '../data.dart';

class AppApi {
  static const String basePath = 'http://128.199.167.145:3000/api/v1/';

  Dio _dio = Dio();
  final Duration timeout;
  final UserLocalStorage userLocalStorage;

  AppApi(
      {String baseUrl = basePath,
      List<Interceptor> interceptors = const [],
      this.timeout = const Duration(minutes: 2),
      required this.userLocalStorage}) {
    _dio.options.baseUrl = baseUrl;
    if (interceptors.isNotEmpty) {
      _dio.interceptors.addAll(interceptors);
    }
    _dio.options.baseUrl = baseUrl;
  }

  UserRestClient getUserApiClient({Dio? dio}) {
    dio ??= _dio;
    return UserRestClient(dio);
  }
}
