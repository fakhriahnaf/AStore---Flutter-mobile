import 'dart:convert';

import 'package:AStore/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://localhost:8000/api';

  Future<UserModel> register({
    String name,
    String username,
    String email,
    String password,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'name': name,
      'usernme': username,
      'email': email,
      'password': password,
    });
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Registrasi');
    }
  }
}
