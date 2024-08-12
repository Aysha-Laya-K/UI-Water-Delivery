import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuyCouponPage(),
    );
  }
}

class BuyCouponPage extends StatefulWidget {
  @override
  _BuyCouponPageState createState() => _BuyCouponPageState();
}

class _BuyCouponPageState extends State<BuyCouponPage> {
  int couponCount1 = 0;
  int couponCount2 = 0;
  int couponCount3 = 0;
  DateTime? selectedDate;
  bool onlinePayment = false;
  bool cashOnDelivery = false;

  int calculateTotalAmount() {
    return (couponCount1 * 300) + (couponCount2 * 150) + (couponCount3 * 75);
  }

  void incrementCoupon(int index) {
    setState(() {
      if (index == 1) {
        couponCount1++;
      } else if (index == 2) {
        couponCount2++;
      } else if (index == 3) {
        couponCount3++;
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
      }
    });
  }

  void selectOnlinePayment() {
    setState(() {
      onlinePayment = true;
      cashOnDelivery = false;
    });
  }

  void selectCashOnDelivery() {
    setState(() {
      cashOnDelivery = true;
      onlinePayment = false;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalAmount = calculateTotalAmount();

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
                  'Buy Coupon Now',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildCouponCard(1, "100", "AED 300", couponCount1),
            SizedBox(height: 16),
            _buildCouponCard(2, "50", "AED 150", couponCount2),
            SizedBox(height: 16),
            _buildCouponCard(3, "25", "AED 75", couponCount3),
            SizedBox(height: 20),
            Text(
              'Net Amount to be Paid:                    AED $totalAmount',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF44575B),
              ),
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '  Select delivery date:',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 170,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFCCD7DA),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      selectedDate != null
                          ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                          : 'select date',
                      style: TextStyle(
                        color: Color(0xFF44575B),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '   Select your payment option:                             ',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: onlinePayment,
                  onChanged: (value) {
                    if (value != null && value) {
                      selectOnlinePayment();
                    }
                  },
                  activeColor: Color(0xFF0663BF),
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Color(0xFF0663BF);
                    }
                    return Color(0xFFF6FDFF);
                  }),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Color(0xFFCCD7DA), width: 1.5),
                  ),
                ),
                Text(
                  'Online Payment',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
                SizedBox(width: 17),
                Checkbox(
                  value: cashOnDelivery,
                  onChanged: (value) {
                    if (value != null && value) {
                      selectCashOnDelivery();
                    }
                  },
                  activeColor: Color(0xFF0663BF),
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Color(0xFF0663BF);
                    }
                    return Color(0xFFF6FDFF);
                  }),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Color(0xFFCCD7DA), width: 2),
                  ),
                ),
                Text(
                  'Cash on Delivery',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
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
                  print('placing order...');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.all(0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 70,
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF6FDFF),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }

  Widget _buildCouponCard(int index, String couponText, String priceText, int count) {
    return Container(
      width: 370,
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
            left: 10,
            top: 12,
            child: Container(
              width: 125,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    couponText,
                    style: TextStyle(
                      color: Color(0xFFf6fdff),
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "coupons",
                    style: TextStyle(
                      color: Color(0xFFf6fdff),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
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
                    '$couponText Coupon Leaf ',
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
          Positioned(
            top: 90,
            left: 63,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price:     $priceText ',
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
          Positioned(
            top: 10,
            left: 290,
            child: Container(
              width: 65,
              height: 37,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  decrementCoupon(index);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Icon(
                  Icons.remove,
                  color: Color(0xFFF6FDFF),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 290,
            child: Container(
              width: 65,
              height: 37,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  incrementCoupon(index);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xFFF6FDFF),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 69,
            right: 38.5,
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xFF44575B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
