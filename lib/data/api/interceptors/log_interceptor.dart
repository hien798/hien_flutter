import 'dart:convert';
import 'package:dio/dio.dart';

class LogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    print("""
      Method: ${options.method}
    Headers: ${options.headers.values}
    Data: ${options.data})}
        """);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("""RESPONSE:
    URL: ${response.requestOptions.uri}
    Method: ${response.requestOptions.method}
    Headers: ${json.encode(response.requestOptions.headers)}
    Data: ${json.encode(response.data)}
        """);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
  //   var email = SetCurrentUserCommand().mainAppState.currentUser?.email ?? '';
  //   print('email $email');
  //   if ((err.response?.statusCode == 403) && email != '') {
  //     showInSnackBar('Your account has been logged into another device.');
  //   }
  //   if ((err.response?.statusCode == 500) && email != '') {
  //     showInSnackBarErrorServer('Internal server error');
  //   }
  //
  //   print("""ERROR:
  //   URL: ${err.requestOptions.uri}
  //   Method: ${err.requestOptions.method}
  //   StatusCode: ${err.response?.statusCode}
  //   StatusCode: ${err.response?.statusMessage}
  //   Headers: ${json.encode(err.requestOptions.headers)}
  //     Data: ${json.encode(err.requestOptions.data)}
  //   Method: ${err.requestOptions.method}
  //   Error: ${err.message}
  //       """);
  //   super.onError(err, handler);
  }
}
