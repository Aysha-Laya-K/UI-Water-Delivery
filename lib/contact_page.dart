import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
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
                  'Contact Us!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 350,
              height: 330, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 3,
                ),
              ),
              child: Stack(
                children: [
                  // Existing content in the outer container

                  // Add a box with a phone icon and phone number
                  Positioned(
                    left: 17,
                    top: 20,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [ Color(0xFF0663BF), Color(0xFF75DBFB),],
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xFFF6FDFF),
                          width: 3.0, // Increase the border thickness
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.contact_phone_rounded,
                            color: Color(0xFFF6FDFF),
                            size: 35,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '+1234567890',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF6FDFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 120,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [ Color(0xFF0663BF), Color(0xFF75DBFB),],
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xFFF6FDFF),
                          width: 3.0, // Increase the border thickness
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Color(0xFFF6FDFF),
                            size: 35,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '+9567864578',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF6FDFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 220,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [ Color(0xFF0663BF), Color(0xFF75DBFB),],
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xFFF6FDFF),
                          width: 3.0, // Increase the border thickness
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.alternate_email_outlined,
                            color: Color(0xFFF6FDFF),
                            size: 35,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'sales@nationalwaters.com',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF6FDFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Add an Image below the email container
                  //Positioned(
                   // left: 17,
                    //top: 320, // Adjust the top position as needed
                   // child: Container(
                     // width: 310, // Adjust the width as needed
                    //  height: 250, // Adjust the height as needed
                     // decoration: BoxDecoration(
                       // image: DecorationImage(
                         // image: AssetImage('assets/images/contactus.png'), // Provide the correct path to your image
                         // fit: BoxFit.cover,
                        //),
                     // ),
                    //),
                  //),
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
