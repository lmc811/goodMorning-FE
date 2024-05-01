

import 'package:dio/dio.dart';

import '../../models/user_information.dart';
import 'base_api_service.dart';

class UserDataService{

  static Future<UserInformation?> getUserData() async{
   // try{
      print(2);
      Response response = await ApiClient().dio.get("/test");
      print(3);
      if(response.data["data"] != null){
        final userData = UserInformation.fromJson(response.data["data"]);
        print(userData);

        return userData;
    //  }


   // } on DioException catch(e){
  //    print(e.message);

    }
  }
}