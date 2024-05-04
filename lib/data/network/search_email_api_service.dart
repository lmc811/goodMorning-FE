import 'package:dio/dio.dart';

import 'app_url.dart';

class ApiClient {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrl.url));

  Future<String> fetchDataByEmail(String accessToken, String userEmail) async {
    try {
      Response response = await dio.get('/data', queryParameters: {
        'email': userEmail,
      }, options: Options(headers: {
        'authorization': 'Bearer $accessToken',
      }));
      return response.data;
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }
}
