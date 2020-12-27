import 'dart:convert';

import 'package:github_demo/model/user_data.dart';
import 'package:http/http.dart' as http;

class GetUsersRepository {
  String baseUrl = 'https://api.github.com/';
  Future<UserData> fetchUser(String text) async {
    final res = await http.get('${baseUrl}users/$text');
    return UserData.fromJson(json.decode(res.body));
  }
}
