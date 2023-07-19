import 'package:foodexapp/helper/post_api.dart';

import '../../model/Auth/user.dart';

class AddProfile{
  Future<UserModel>addProfile({
    String? avatar
})async{
   Map<String,dynamic>data= await PostApi().postApi(url: 'http://206.189.103.8/api/auth/user/update/1',body: {
      'avatar':avatar,
    },token: '29|tI8t26PWzkfvobW8woudR4zfnNMk3mpbR7LeSq43');
    return UserModel.fromJson(data);
  }
}