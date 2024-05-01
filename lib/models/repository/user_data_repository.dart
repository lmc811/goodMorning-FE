

import 'package:goodmorning/data/network/user_data_service.dart';

import '../user_information.dart';

class UserDataRepository{

  static Future<UserInformation?> getUserNumberApi() async {
    print(1);

    final response = await UserDataService.getUserData();

    return response;


  }
}