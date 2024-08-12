import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: Container(
          color: Color(0xFF75DBFB),
          child: Center(
            child: Image.asset(
              'assets/images/changepwrd.png',
              width: 180,
              height: 180,
            ),
          ),
        ),
        toolbarHeight: 230.0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: Color(0xFF75DBFB),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                color: Color(0xFFF6FDFF),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 23.0),
                      Text(
                        'Create New Password',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF44575B),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 300,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0xFFCCD7DA),
                              width: 2.0,
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'New Password',
                              labelStyle: TextStyle(fontSize: 16.0),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                              alignLabelWithHint: true,
                            ),
                            obscureText: true,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 300,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0xFFCCD7DA),
                              width: 2.0,
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(fontSize: 16.0),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                              alignLabelWithHint: true,
                            ),
                            obscureText: true,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          // Implement the logic to change the password here
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0xFFF6FDFF), backgroundColor: Colors.green,
                          minimumSize: Size(300, 70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text('Reset Password', style: TextStyle(fontSize: 18.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
