import 'package:dio/dio.dart';

class GetFav{
   getFav() async{
     //.. some netwrok code here
     //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     String token;
    // token = sharedPreferences.getString('token');

          Response response = await Dio().post("https/:: some domain name/ get_fav",

         data: {

           "token": "$token",

         }

     );

   }
}