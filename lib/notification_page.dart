import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xFF44575B),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'Your Notifications',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 180,
              width: 380,
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'REMINDER',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dear customer, This is a reminder that today is your scheduled delivery day. Please keep empty bottles with coupon leaf outside doorstep. Thank you.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '25 Oct 2023',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF44575B),
                        ),
                      ),
                      Text(
                        '06:30 AM',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 180,
              width: 380,
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'REMINDER',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dear customer, This is a reminder that today is your scheduled delivery day. Please keep empty bottles with coupon leaf outside doorstep. Thank you.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10 Oct 2023',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF44575B),
                        ),
                      ),
                      Text(
                        '04:30 AM',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 180,
              width: 380,
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'REMINDER',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dear customer, This is a reminder that today is your scheduled delivery day. Please keep empty bottles with coupon leaf outside doorstep. Thank you.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '03 Oct 2023',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF44575B),
                        ),
                      ),
                      Text(
                        '06:30 AM',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }
}

