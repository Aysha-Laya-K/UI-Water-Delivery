import 'package:flutter/material.dart';

class DispenserCoolerPurchasesPage extends StatelessWidget {
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
                  'Dispenser & Cooler Purchases',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            Container(
              height: 160,
              width: 330,
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
                    'ORDER NO            : national-135678',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'ORDER DATE        : 22-08-2023',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF44575B),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'ORDER STATUS   : Pending',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF44575B),
                    ),
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

