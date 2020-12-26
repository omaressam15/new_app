import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services{

  final url = 'http://api.naffeth.com/';

  final endPoint = 'login';

   Future <String> loginService ({String mobile, String password} ) async {

   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    Response response;
    try{
     response = await Dio().post("$url$endPoint",
          data: {
            "mobile":"$mobile",
            "password":"$password",
          }
      );
     sharedPreferences.setString("token", response.data['token']);
     sharedPreferences.setInt("id", response.data['id']);
     sharedPreferences.setString("name", response.data['name']);
     sharedPreferences.setString("photo", response.data['photo']);
     return "success";

    }
   on DioError catch(error){

      print("$error");

      return "${error.response.data['errorCode']}";

    }
  }
}

