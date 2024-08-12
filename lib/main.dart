import 'package:flutter/material.dart';
import 'login/signin_page.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // Setting the default font family to Poppins
      ),
      home: WelcomeHomePage(),

    );
  }
}

class WelcomeHomePage extends StatefulWidget {
  @override
  _WelcomeHomePageState createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  bool _isTextBig = false;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50), // Adjust top spacing
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/national1.png',
                        width: 400,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 70),
                      Text(
                        'Welcome to\nNational Drinking Waters',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _isTextBig ? 40 : 30, // Change font size conditionally
                          color: Colors.white, // Fixed text color as white
                          fontFamily: 'Poppins', // Setting the font family to Poppins
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the sign-in page when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 15,
                            ),
                          ),
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins', // Setting the font family to Poppins
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10), // Adjust bottom spacing
                    ],
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
