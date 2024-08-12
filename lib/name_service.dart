import 'package:flutter/material.dart';


class NameChangePage extends StatelessWidget {
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
                  'Name Change Request',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 350,
              height: 210, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 3,
                ),
              ),
              child: Stack(
                children: [
                  // Add a Typable Container for Customer ID
                  Positioned(
                    left: 17,
                    top: 20,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFCCD7DA),
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter New Name',
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF44575B),
                          ),
                          border: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  // Add a Typable Container for Mobile Number
                  // Add an Elevated "Submit" button
                  Positioned(
                    left: 17,
                    top: 120,
                    child: Container(
                      width: 310,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your logic to send feedback here
                          print('Submitting.....');
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          height: 70,
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF6FDFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Add the "recharge.png" image
                  //Positioned(
                  // left: 70,
                  // top: 320,
                  // child: Image.asset(
                  // 'assets/images/recharge.png', // Replace with the actual image path
                  // width: 200,
                  // height: 200,
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
