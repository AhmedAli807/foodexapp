import 'package:dio/dio.dart';

class GetApi{
   String ?url;
getApi(url)async{
  final dio=Dio();
  try {
    Response response = await dio.getUri(url,);
    if(response.statusCode==200){
      print(response.statusCode);

    }
    else{
      print('some thing went wrong');
    }

  }
  catch(e){
      print('some thing went wrong $e');
  }
  }


}
