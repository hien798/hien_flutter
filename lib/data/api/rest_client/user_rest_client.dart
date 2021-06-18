import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../data.dart';

part 'user_rest_client.g.dart';

@RestApi()
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @POST("auth/login")
  Future<UserResponse> login(@Body() LoginUserRequest request);

  @GET('auth/info')
  Future<UserResponse> getCurrentUser();

  @POST('auth/refresh-token')
  Future<UserResponse> refreshToken(@Body() RefreshTokenRequest body);
}
