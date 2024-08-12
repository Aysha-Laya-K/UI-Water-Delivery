import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WaterProductPage(),
    );
  }
}

class WaterProductPage extends StatefulWidget {
  @override
  _WaterProductPageState createState() => _WaterProductPageState();
}

class _WaterProductPageState extends State<WaterProductPage> {
  int couponCount1 = 0;


  void incrementCoupon(int index) {
    setState(() {
      if (index == 1) {
        couponCount1++;
      }
    });
  }

  void decrementCoupon(int index) {
    setState(() {
      if (index == 1 && couponCount1 > 0) {
        couponCount1--;
      }
    });
  }


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
                  'Water',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildCouponCard(1, "5", "20", couponCount1),
            SizedBox(height: 20),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }

  Widget _buildCouponCard(int index, String couponText, String priceText, int count) {
    return Container(
      width: 350,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Color(0xFFCCD7DA),
          width: 3,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
           right: 200,
            top: 12,
            child: Container(
              width: 190,
              height: 140,
              child: Image.asset(
                'assets/images/bigbottle.png', // Replace with the actual path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 60,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$couponText Gallon Water Bottle ',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF44575B),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 65,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price: AED $priceText ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF44575B),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
