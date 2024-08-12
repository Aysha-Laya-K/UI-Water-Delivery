import 'package:get/get.dart';
import '../API/api_manager.dart';
import '../MODELS/auth_model.dart';
import '../../home_page.dart';


class LoginController extends GetxController {
  var isLoading = false.obs;

  Future<void> loginUser(String username, String password) async {
    isLoading(true);
    print('Username: $username');
    try {
      final response = await ApiManager().login(username, password);
      print('API Response: $response'); // Log the response for debugging

      AuthModel authModel = AuthModel.fromJson(response);

      if (authModel.status) {
        Get.offAll(() => HomePage());
      } else {
        print('Login failed. Message: ${authModel.message}');
        // Handle other cases of unsuccessful login if applicable
      }
    } catch (e) {
      print('Error occurred during login: $e');
      // Handle exceptions or network errors here
    } finally {
      isLoading(false);
    }
  }
}
