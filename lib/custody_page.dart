import 'package:flutter/material.dart';

class CustodyPage extends StatelessWidget {
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
                  'Items with Me',
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
              width: 330,
              height: 170, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 4,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 150, // Adjust the width as needed
                    height: 300, // Adjust the height as needed
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/bigbottle.png', // Replace with the actual path to your image
                      width: 1700, // Adjust the width of the image
                      height: 1700, // Adjust the height of the image
                    ),
                  ),
                  Positioned(
                    top: 25, // Adjust the top position as needed
                    left: 39, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Text(
                        '5 Gallon',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75, // Adjust the top position as needed
                    left: 45, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Qty: ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                          SizedBox(
                            width: 10, // Adjust the width to create a space between "Qty:" and the box
                          ),
                          Container(
                            width: 35, // Adjust the width of the box as needed
                            height: 35, // Adjust the height of the box as needed
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                              ), // Background gradient from left bottom to right top
                              borderRadius: BorderRadius.circular(5), // Adjust the border radius
                            ),
                            child: Center(
                              child: Text(
                                '0', // Quantity text
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF6FDFF), // Text color
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 330,
              height: 170, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 4,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 150, // Adjust the width as needed
                    height: 300, // Adjust the height as needed
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/smallbottle.png', // Replace with the actual path to your image
                      width: 1700, // Adjust the width of the image
                      height: 1700, // Adjust the height of the image
                    ),
                  ),
                  Positioned(
                    top: 25, // Adjust the top position as needed
                    left: 39, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Text(
                        'Water',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75, // Adjust the top position as needed
                    left: 45, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Qty: ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                          SizedBox(
                            width: 10, // Adjust the width to create a space between "Qty:" and the box
                          ),
                          Container(
                            width: 35, // Adjust the width of the box as needed
                            height: 35, // Adjust the height of the box as needed
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                              ), // Background gradient from left bottom to right top
                              borderRadius: BorderRadius.circular(5), // Adjust the border radius
                            ),
                            child: Center(
                              child: Text(
                                '0', // Quantity text
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF6FDFF), // Text color
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 330,
              height: 170, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 4,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 150, // Adjust the width as needed
                    height: 300, // Adjust the height as needed
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/smallbottle.png', // Replace with the actual path to your image
                      width: 1700, // Adjust the width of the image
                      height: 1700, // Adjust the height of the image
                    ),
                  ),
                  Positioned(
                    top: 25, // Adjust the top position as needed
                    left: 39, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Text(
                        'Pot Dispenser',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75, // Adjust the top position as needed
                    left: 45, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Qty: ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                          SizedBox(
                            width: 10, // Adjust the width to create a space between "Qty:" and the box
                          ),
                          Container(
                            width: 35, // Adjust the width of the box as needed
                            height: 35, // Adjust the height of the box as needed
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                              ), // Background gradient from left bottom to right top
                              borderRadius: BorderRadius.circular(5), // Adjust the border radius
                            ),
                            child: Center(
                              child: Text(
                                '0', // Quantity text
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF6FDFF), // Text color
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 330,
              height: 170, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 4,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 150, // Adjust the width as needed
                    height: 300, // Adjust the height as needed
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/bigbottle.png', // Replace with the actual path to your image
                      width: 1700, // Adjust the width of the image
                      height: 1700, // Adjust the height of the image
                    ),
                  ),
                  Positioned(
                    top: 25, // Adjust the top position as needed
                    left: 39, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Text(
                        'Hand Pump',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75, // Adjust the top position as needed
                    left: 45, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Qty: ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                          SizedBox(
                            width: 10, // Adjust the width to create a space between "Qty:" and the box
                          ),
                          Container(
                            width: 35, // Adjust the width of the box as needed
                            height: 35, // Adjust the height of the box as needed
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                              ), // Background gradient from left bottom to right top
                              borderRadius: BorderRadius.circular(5), // Adjust the border radius
                            ),
                            child: Center(
                              child: Text(
                                '0', // Quantity text
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF6FDFF), // Text color
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 330,
              height: 170, // Adjust the height to accommodate the new elements
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 4,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 150, // Adjust the width as needed
                    height: 300, // Adjust the height as needed
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/bigbottle.png', // Replace with the actual path to your image
                      width: 1700, // Adjust the width of the image
                      height: 1700, // Adjust the height of the image
                    ),
                  ),
                  Positioned(
                    top: 25, // Adjust the top position as needed
                    left: 39, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Text(
                        'Cradle with',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF44575B),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75, // Adjust the top position as needed
                    left: 45, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Qty: ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                          SizedBox(
                            width: 10, // Adjust the width to create a space between "Qty:" and the box
                          ),
                          Container(
                            width: 35, // Adjust the width of the box as needed
                            height: 35, // Adjust the height of the box as needed
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                              ), // Background gradient from left bottom to right top
                              borderRadius: BorderRadius.circular(5), // Adjust the border radius
                            ),
                            child: Center(
                              child: Text(
                                '0', // Quantity text
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF6FDFF), // Text color
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }
}
