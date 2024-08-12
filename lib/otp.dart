import 'package:flutter/material.dart';
import '../../signup_page.dart';

class OTPPPage extends StatefulWidget {
  @override
  _OTPPPageState createState() => _OTPPPageState();
}

class _OTPPPageState extends State<OTPPPage> {
  List<TextEditingController> otpControllers = List.generate(4, (index) => TextEditingController());

  void _navigateToSignUpPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignUpPage(),
      ),
    );
  }

  Widget _buildOTPBox(int position) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
        ),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 2.0,
          color: Color(0xFFF6FDFF),
        ),
      ),
      child: Center(
        child: TextField(
          controller: otpControllers[position],
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, color: Color(0xFFF6FDFF)),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/otp.png',
                width: 200.0,
                height: 200.0,
              ),
              SizedBox(height: 10.0),
              Text(
                'Verify OTP',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF6FDFF),
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  Text(
                    'Please enter 4 digit code sent to',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFFF6FDFF)),
                  ),
                  Text(
                    'your Email',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFFF6FDFF)),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < 4; i++)
                    Padding(
                      padding: EdgeInsets.only(right: 11.0, left: 7),
                      child: _buildOTPBox(i),
                    ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "If you don't receive the code? ",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFFF6FDFF)),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Resend OTP');
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xFFF6FDFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  String enteredOTP = '';
                  for (int i = 0; i < 4; i++) {
                    enteredOTP += otpControllers[i].text;
                  }
                  print('Entered OTP Code: $enteredOTP');
                  _navigateToSignUpPage(context); // Navigate to ChangePasswordPage
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.green,
                  minimumSize: Size(300, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: BorderSide(
                    color: Color(0xFFF6FDFF),
                    width: 3.0,
                  ),
                ),
                child: Text(
                  'VERIFY',
                  style: TextStyle(
                    color: Color(0xFFF6FDFF),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
