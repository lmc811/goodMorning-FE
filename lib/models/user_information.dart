
class UserInformation{
  final String usernumber;

  UserInformation({
    required this.usernumber
  });

  factory UserInformation.fromJson(Map<String, dynamic> json){
    return UserInformation(usernumber: json["numbers"]);
  }


}