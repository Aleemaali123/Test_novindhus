import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:machine_test/Utils/Constant/constant.dart';
import 'package:machine_test/model/login_model.dart';

Future<LoginModel?> loginapi(String username, String password) async {
 
  final res = await http.post(Uri.parse(Constant.baseURL + Constant.loginurl),
      body: {
        Constant.loginkeyusername: username,
        Constant.loginkeypassword: password
      });
  // admin_user
  // 123admin789
  if (res.statusCode == 200) {
    final decoded = jsonDecode(res.body);
    saveget.saveapikey("${decoded['access']}");
    saveget.saveurlid("${decoded['url_id']}");


    return LoginModel.fromJson(json.decode(res.body));
  } else {
    throw Exception('Failed to load data');
  }
}
