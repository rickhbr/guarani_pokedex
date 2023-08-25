import 'package:dio/dio.dart';

abstract class HttpMethods {
  static const String post = 'POST';
  static const String get = 'GET';
  static const String put = 'PUT';
  static const String patch = 'PATCH';
  static const String delete = 'DELETE';
}

class HttpManager {
  Map<String, dynamic> result = {};
  Map<String, String>? defaultHeaders = {};

  Future<Map> restRequest({
    required String url,
    required String method,
    Map? headers,
    Map? body,
  }) async {
    // Headers da requisição
    if (headers == null) {
      defaultHeaders = headers?.cast<String, String>() ?? {}
        ..addAll({
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        });
    } else {
      defaultHeaders = headers.cast<String, String>();
    }
    Dio dio = Dio();

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: defaultHeaders,
          method: method,
        ),
        data: body,
      );

      result['response'] = response.data;
      result['statusCode'] = response.statusCode;

      return result;
    } on DioError catch (e) {
      result['response'] = {};
      result['statusCode'] = e.response!.statusCode;

      return result;
    }
  }
}
