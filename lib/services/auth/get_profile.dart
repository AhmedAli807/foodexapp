import 'package:foodexapp/helper/get_api.dart';
class GetProfile {
  getProfile() async {
    List<dynamic>data = await GetApi().getApi(
        ' http://206.189.103.8/api/auth/profile/4');
    return data;
  }
}