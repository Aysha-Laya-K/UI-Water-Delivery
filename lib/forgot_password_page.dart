import 'package:flutter/material.dart';
import 'otp_page.dart'; // Replace with the correct import path

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight( -30.0), // Remove app bar
        child: Container(),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/img.png', width: 300, height: 300), // Add the lock image
                SizedBox(height: 5.0), // Create space between the image and text
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Color(0xFFF6FDFF),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Please enter your email address to',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFFF6FDFF),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'receive a verification code',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFFF6FDFF),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 300.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xFF75DBFB), Color(0xFF0663BF)],
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Color(0xFFF6FDFF),
                      width: 3.0, // Increase the border thickness
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(80.0, 7.0, 0.0, 0.0), // Add a left margin
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email Address', // Use labelText
                        labelStyle: TextStyle(
                          color: Color(0xFFF6FDFF),
                          fontSize: 18.0,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 300.0,
                  height: 70.0, // Set the same height as the email address box
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Color(0xFFF6FDFF),
                      width: 3.0, // Increase the border thickness
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add functionality to send email

                      // Navigate to OTP page
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OTPPage(), // Replace OTPPage with your OTP page class
                      ));
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text(
                      'Send Email',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFFF6FDFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
