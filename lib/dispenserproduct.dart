import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DispenserProductPage(),
    );
  }
}

class DispenserProductPage extends StatefulWidget {
  @override
  _DispenserProductPageState createState() => _DispenserProductPageState();
}

class _DispenserProductPageState extends State<DispenserProductPage> {
  int couponCount1 = 0;
  int couponCount2 = 0;
  int couponCount3 = 0;
  int couponCount4 = 0;
  int couponCount5 = 0;
  int couponCount6 = 0;

  void incrementCoupon(int index) {
    setState(() {
      if (index == 1) {
        couponCount1++;
      } else if (index == 2) {
        couponCount2++;
      } else if (index == 3) {
        couponCount3++;
      } else if (index == 4) {
        couponCount4++;
      } else if (index == 5) {
        couponCount5++;
      } else if (index == 6) {
        couponCount6++;
      }
    });
  }

  void decrementCoupon(int index) {
    setState(() {
      if (index == 1 && couponCount1 > 0) {
        couponCount1--;
      } else if (index == 2 && couponCount2 > 0) {
        couponCount2--;
      } else if (index == 3 && couponCount3 > 0) {
        couponCount3--;
      } else if (index == 4 && couponCount4 > 0) {
        couponCount4--;
      } else if (index == 5 && couponCount5 > 0) {
        couponCount5--;
      } else if (index == 6 && couponCount6 > 0) {
        couponCount6--;
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
                  'Dispensing Accessories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildCouponCard(1, "Water Dispenser(H&C)", "425", couponCount1),
            SizedBox(height: 20),
            _buildCouponCard(2, "Table Top Dispenser(H&C)", "325", couponCount2),
            SizedBox(height: 20),
            _buildCouponCard(3, "Pot Dispenser(H&C)", "50", couponCount3),
            SizedBox(height: 20),
            _buildCouponCard(4, "Hand Pump(manual)", "15", couponCount4),
            SizedBox(height: 20),
            _buildCouponCard(5, "Cradle With Tap", "20", couponCount5),
            SizedBox(height: 20),
            _buildCouponCard(6, "Cup Holder", "25", couponCount6),
            SizedBox(height: 20),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }

  Widget _buildCouponCard(int index, String nameText, String priceText, int count) {
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
                    ' $nameText ',
                    style: TextStyle(
                      fontSize: 17,
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
                      fontSize: 17,
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
