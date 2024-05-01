import 'package:dio/dio.dart';
import 'package:goodmorning/data/network/app_url.dart';

class ApiClient {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrl.url));

  ApiClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers["authorization"] = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicm9sZSI6IlVTRVIiLCJpYXQiOjE3MTQ1Mzk4ODUsImV4cCI6MTcxNzEzMTg4NX0.XgqMKN7UDKzzFrs3xET9oNmLiqM_3hrnc1Mnzcc_2DE";
        return handler.next(options);
      },
    ));
  }
}
