import 'package:edu/model/login_response_dm.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



abstract class ApiManager{

  static const baseUrl = "core.prime-mind.net";
  static const apiKey = "12345678910";



  static Future<LoginResponseDm> getLoginResponses() async{

    Uri url = Uri.https(baseUrl,"swagger/#/Authentication/post_login",{
      "apiKey": apiKey
    });

    http.Response response = await http.post(url);
    Map json = jsonDecode(response.body) as Map;
    LoginResponseDm loginResponse = LoginResponseDm.fromJson(json);
    return loginResponse;
  }
}