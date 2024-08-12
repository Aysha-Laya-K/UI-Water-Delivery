import 'package:flutter/material.dart';

class ReferPage extends StatelessWidget {
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
                  'Refer Now',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                'Start referring using 3 simple steps:',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF44575B),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Step 1
            SizedBox(height: 16),
            Text(
              'Step 1',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF44575B),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 300,
              height: 50,

              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF75DBFB), Color(0xFF0663BF), ],
                ),
              ),
              child: Text(
                'Refer Your Friend',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF6FDFF),
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Step 2
            SizedBox(height: 16),
            Text(
              'Step 2',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF44575B),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 300,
              height: 50,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [ Color(0xFF0663BF), Color(0xFF75DBFB),],
                ),
              ),
              child: Text(
                'Your Friend Registers With Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF6FDFF),
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Step 3
            SizedBox(height: 16),
            Text(
              'Step 3',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF44575B),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 300,
              height: 50,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF75DBFB), Color(0xFF0663BF), ],
                ),
              ),
              child: Text(
                'Win Cool Rewards',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF6FDFF),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),

            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Set the border radius to curve all four corners to 20
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Add your logic to send feedback here
                  print('referring...');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.all(0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 70,
                  child: Text(
                    'Click here to Start Referring',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF6FDFF),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }
}
