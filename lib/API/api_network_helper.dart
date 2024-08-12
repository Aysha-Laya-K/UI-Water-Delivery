import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiNetworkHelper {
  final String baseUrl;

  ApiNetworkHelper(this.baseUrl);

  Future<dynamic> fetchData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<dynamic> postData(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to post data');
    }
  }
}

class ApiManager {
  final ApiNetworkHelper apiNetworkHelper;

  ApiManager(this.apiNetworkHelper);

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await apiNetworkHelper.postData(
      'api/login/',
      {'username': username, 'password': password},
    );

    return response;
  }
}

void main() {
  final String baseUrl = "http://68.183.94.11:91";
  final ApiNetworkHelper apiNetworkHelper = ApiNetworkHelper(baseUrl);
  final ApiManager apiManager = ApiManager(apiNetworkHelper);

  // Example usage of login function
  apiManager.login('your_username', 'your_password')
      .then((result) {
    print(result); // Handle the result of the login request
  })
      .catchError((error) {
    print(error); // Handle any errors that occur during the request
  });
}
