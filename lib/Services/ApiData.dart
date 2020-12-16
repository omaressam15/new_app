
import 'package:dio/dio.dart';

class Services{

  final url = 'http://api.naffeth.com/';

  final endPoint = 'login';

  loginService (String phone, String password ) async {

    Response response = await Dio().post(url+endPoint,

        data: {

          "mobile":"$phone",

          "password":"$password",

        }

    );

  }
}

