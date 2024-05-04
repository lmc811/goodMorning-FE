import 'package:dio/dio.dart';

import 'app_url.dart';

class ApiClient {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrl.url));

  Future<String> fetchDataByUserNumber(String accessToken, int userNumber) async {
    try {
      Response response = await dio.get('/data', queryParameters: {
        'user_number': userNumber.toString(),
      }, options: Options(headers: {
        'authorization': 'Bearer $accessToken',
      }));
      return response.data;
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }
}
