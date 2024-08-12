import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<Map<String, dynamic>> login(String username, String password) async {
    final url = Uri.parse('http://68.183.94.11:91/api/login/');
    final response = await http.post(
      url,
      body: json.encode({
        'username': username,
        'password': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }
}
