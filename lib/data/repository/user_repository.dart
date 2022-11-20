import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

class UserRepository {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  Future<List<UserModel>> getUsers() async {
    final response = await http.get(Uri.parse('${_baseUrl}users'));
    if (response.statusCode == 200) {
      dynamic usersData = jsonDecode(response.body);
      return usersData.map<UserModel>((user) => UserModel.fromJSON(user)).toList();
    } else {
      throw Exception("Failed to load user");
    }
  }
}