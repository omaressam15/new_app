
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services{

  final url = 'http://api.naffeth.com/';

  final endPoint = 'login';

  loginService (String phone, String password ) async {

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    Response response = await Dio().post(url+endPoint,

        data: {

          "mobile":"$phone",

          "password":"$password",

        }

    );

  }
}

