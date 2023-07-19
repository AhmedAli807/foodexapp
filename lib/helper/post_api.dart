import 'dart:convert';

import 'package:dio/dio.dart';

class PostApi {
  Future<dynamic> postApi(
      {required String url, dynamic body, String ?token}) async {
    Dio dio = Dio();
    Map<String, String>headers = {
    };
    if(token!=null){
      headers.addAll({'Authorization':'Bearer $token'});
    }
    Response response = await dio.post(url, data: body,options: Options(headers: headers));
    if(response.statusCode==200){
    Map<String,dynamic>data=jsonDecode(response.data);
    return data;}
else{
  throw Exception('some thing went wrong ${response.statusCode}');
    }
  }
}