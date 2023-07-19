import 'dart:convert';

import 'package:dio/dio.dart';

class PutApi{
  Future<dynamic> putApi(
      {required String url, dynamic body, String ?token}) async {
    Dio dio = Dio();
    Map<String, String>headers = {
    };

    if(token!=null){
      headers.addAll({'Authorization':'Bearer $token'});
    }
    Response response = await dio.put(url, data: body,options: Options(headers: headers));
    if(response.statusCode==200){
      Map<String,dynamic>data=jsonDecode(response.data);
      return data;}
    else{
      throw Exception('some thing went wrong ${response.statusCode}');
    }
  }
}