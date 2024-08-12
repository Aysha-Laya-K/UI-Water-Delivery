import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national/mobile.dart';
import '../login/login_controller.dart';
import '../../signup_page.dart';
import '../../forgot_password_page.dart';




class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFF6FDFF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF44575B),
                ),
              ),
            ),
            LoginWidget(),
          ],
        ),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final LoginController _loginController = Get.put(LoginController());
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _navigateToForgotPasswordPage() {
    Get.to(ForgotPasswordPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA),
                width: 3.0,
              ),
            ),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'User Name',
                labelStyle: TextStyle(fontSize: 16.0),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.person, color: Color(0xFF44575B)),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA),
                width: 3.0,
              ),
            ),
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 16.0),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.lock, color: Color(0xFF44575B)),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _loginController.loginUser(

                _usernameController.text,
                _passwordController.text,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(400, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: Color(0xFFF6FDFF),
                  width: 3.0,
                ),
              ),
              elevation: 0,
            ),
            child: Text(
              'Login',
              style: TextStyle(
                color: Color(0xFFF6FDFF),
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: _navigateToForgotPasswordPage,
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color(0xFF44575B),
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 0.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an account?",
                style: TextStyle(color: Color(0xFF44575B)),
              ),
              TextButton(
                onPressed: () {
                  Get.to(MobilePage());
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF44575B),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}