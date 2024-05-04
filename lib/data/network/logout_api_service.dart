import 'package:dio/dio.dart';

import 'app_url.dart';

class ApiClient {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrl.url));

  Future<void> logout(String refreshToken) async {
    try {
      await dio.post('/logout', options: Options(headers: {
        'authorization': 'Bearer $refreshToken',
      }));
    } catch (e) {
      throw Exception('Failed to logout: $e');
    }
  }
}