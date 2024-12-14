part of 'service.dart';

class AuthService {
  Future<UserModel> login({
    required String username,
    required String password,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = '${URLs.baseUrl}/api/login';

    var headers = {
      'Content-Type': 'application/json',
    };

    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      UserModel userModel = UserModel.fromJson(data);

      prefs.getString(data['token']);

      print(data);

      return userModel;
    } else {
      var data = jsonDecode(response.body);

      print(data);
      throw Failed(data['message']);
    }
  }
}
