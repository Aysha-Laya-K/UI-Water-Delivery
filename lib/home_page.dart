import 'package:flutter/material.dart';
import 'package:national/login/signin_page.dart';
import 'myprofile_page.dart';
import 'feedback_page.dart';
import 'referearn_page.dart';
import 'terms_page.dart';
import 'policy_page.dart';
import 'contact_page.dart';
import 'orderwater_page.dart';
import 'buycoupon_page.dart';
import 'custody_page.dart';
import 'transaction.dart';
import 'delivery_page.dart';
import 'recharge.dart';
import 'notification_page.dart';
import 'dispenser_service.dart';
import 'address_service.dart';
import 'name_service.dart';
import 'other_service.dart';
import 'waterproduct.dart';
import 'couponproduct.dart';
import 'dispenserproduct.dart';


void main() => runApp(MaterialApp(home: HomePage()));

class BagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Set the AppBar height to zero to remove it
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false, // Disable the back arrow
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'Our Products',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WaterProductPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.water_drop_sharp,
                          color: Color(0xFF44575B),
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Water',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFF6FDFF),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CouponProductPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.price_change_sharp,
                          color: Color(0xFF44575B),
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Coupon',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFF6FDFF),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DispenserProductPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.call_to_action_rounded,
                          color: Color(0xFF44575B),
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dispensing Accessories',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFF6FDFF),
                      size: 30,
                    ),
                  ],
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


class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Set the AppBar height to zero to remove it
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false, // Disable the back arrow
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'Your Cart',
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
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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
                        '5 Gallon Water',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 63, // Adjust the top position as needed
                    left: 45, // Add left margin
                    right: 0, // Centered horizontally
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Price: AED 450 ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF6FDFF),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 95, // Adjust the top position as needed
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
                              color: Color(0xFFF6FDFF),
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

          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Set the AppBar height to zero to remove it
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false, // Disable the back arrow
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'Your Settings',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DispenserServicePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40, // Width of the cart icon
                      height: 40, // Height of the cart icon
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF), // Color of the cart icon
                      ),
                      child: Center(
                        child: Icon(
                          Icons.mail_sharp, // Use the cart icon
                          color: Color(0xFF44575B), // Icon color
                          size: 25, // Icon size
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Add some spacing between the icon and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Request for Dispenser Service',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(), // Add a spacer to push the arrow to the right
                    Icon(
                      Icons.arrow_forward_ios_outlined, // Arrow icon
                      color: Color(0xFFF6FDFF), // Icon color
                      size: 25, // Icon size
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressChangePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40, // Width of the cart icon
                      height: 40, // Height of the cart icon
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF), // Color of the cart icon
                      ),
                      child: Center(
                        child: Icon(
                          Icons.perm_contact_cal_sharp, // Use the cart icon
                          color: Color(0xFF44575B), // Icon color
                          size: 25, // Icon size
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Add some spacing between the icon and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Request for Address Change',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(), // Add a spacer to push the arrow to the right
                    Icon(
                      Icons.arrow_forward_ios_outlined, // Arrow icon
                      color: Color(0xFFF6FDFF), // Icon color
                      size: 25, // Icon size
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NameChangePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40, // Width of the icon
                      height: 40, // Height of the icon
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF), // Color of the icon
                      ),
                      child: Center(
                        child: Icon(
                          Icons.person_add_alt_rounded, // Use the icon
                          color: Color(0xFF44575B), // Icon color
                          size: 25, // Icon size
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Add spacing between the icon and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Request for Name Change',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(), // Add a spacer to push the arrow to the right
                    Icon(
                      Icons.arrow_forward_ios_outlined, // Arrow icon
                      color: Color(0xFFF6FDFF), // Icon color
                      size: 25, // Icon size
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtherServicePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40, // Width of the icon
                      height: 40, // Height of the icon
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF6FDFF), // Color of the icon
                      ),
                      child: Center(
                        child: Icon(
                          Icons.call_to_action_sharp, // Use the icon
                          color: Color(0xFF44575B), // Icon color
                          size: 25, // Icon size
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Add spacing between the icon and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Others',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF),
                          ),
                        ),
                      ],
                    ),
                    Spacer(), // Add a spacer to push the arrow to the right
                    Icon(
                      Icons.arrow_forward_ios_outlined, // Arrow icon
                      color: Color(0xFFF6FDFF), // Icon color
                      size: 25, // Icon size
                    ),
                  ],
                ),
              ),
            ),

            _cancellationContainer(context),
            _logoutContainer(context),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }
  Widget _cancellationContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showCancellationDialog(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
            style: BorderStyle.solid,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFF6FDFF),
              ),
              child: Center(
                child: Icon(
                  Icons.cancel,
                  color: Color(0xFF44575B),
                  size: 25,
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Request for Cancellation',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFF6FDFF),
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                _showCancellationDialog(context);
              },
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xFFF6FDFF),
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCancellationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Call Us',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF44575B),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please get in touch with us to proceed further?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF44575B),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Not Now'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text('Proceed'),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Color(0xFFF6FDFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        );
      },
    );
  }
}

  Widget _logoutContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showLogoutConfirmationDialog(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
            style: BorderStyle.solid,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFF6FDFF),
              ),
              child: Center(
                child: Icon(
                  Icons.logout,
                  color: Color(0xFF44575B),
                  size: 25,
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFF6FDFF),
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xFFF6FDFF),
              size: 25,
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    final GlobalKey key = GlobalKey(); // Create a new GlobalKey instance

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          key: key, // Use the newly generated GlobalKey for the AlertDialog
          title: Text(
            'Logout',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF44575B),// Set text color for the title
            ),
          ),
          content: Text(
            'Are you sure you want to logout?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF44575B), // Set text color for the content
            ),
          ),
          backgroundColor: Color(0xFFF6FDFF), // Set the background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }








class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> itemList = [
    // Add more items as needed
  ];
  class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Variable to track the selected tab index

  // Define a list of icons for the bottom navigation bar
  final List<Icon> bottomNavIcons = [
    Icon(Icons.home),
    Icon(Icons.shopping_bag),
    Icon(Icons.shopping_cart),
    Icon(Icons.settings),
  ];

  final List<Widget> pages = [
    HomePageContent(), // This is the content of your current HomePage
    BagPage(),
    CartPage(),
    SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF6FDFF),
      appBar: _currentIndex == 0
          ? AppBar(
        backgroundColor: Color(0xFFF6FDFF),
        title: Text(''),
        elevation: 0.0,
        leading: Builder( // Wrap with Builder widget
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'assets/images/asset1.png',
                  width: 25,
                  height: 25,
                ),
              ),
            );
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );// Add your notification icon onPressed logic here
            },
            child: Padding(
              padding: EdgeInsets.only(top: 8.0, right: 8.0),
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Color(0xFF44575B),
                    size: 46,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      width: 24,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Color(0xFFF6FDFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
          : null, // Set appBar to null for other pages

      drawer: Drawer(
        child: Container(
          color: Color(0xFFF6FDFF),
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xFFF6FDFF), // Change the background color of the outer container
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0), // Set bottom left to 0
                          bottomRight: Radius.circular(25.0), // Set bottom right to 0
                        ),
                      ),
                      width: 270, // Full width
                      height: 60, // Height of the container
                      margin: EdgeInsets.only(top: 20), // Add margin from the top
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(80.0, 19.0, 0.0, 0.0), // Add a left margin
                        child: Text(
                          'WELCOME!',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6FDFF), // This color remains as it is
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'My Profile',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.person),
              onTap: () {
                // Add logic to navigate to the "My Profile" page.
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyProfilePage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Feedback',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.feedback),
              onTap: () {
                // Add logic to navigate to the "FeedbackPage."
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FeedbackPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Refer and Earn',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.card_giftcard),
              onTap: () {
                // Add logic to navigate to the "ReferEarnPage."
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ReferEarnPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Share',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.share),
              onTap: () {
                // Add logic to navigate to the "SharePage."
              },
            ),
            ListTile(
              title: Text(
                'Terms and Conditions',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.library_books),
              onTap: () {
                // Add logic to navigate to the "TermsAndConditionsPage."
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Privacy Policy',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.security),
              onTap: () {
                // Add logic to navigate to the "PrivacyPolicyPage."
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Contact Us',
                style: TextStyle(color: Color(0xFF44575B),fontWeight: FontWeight.w600, fontSize: 18),
              ),
              leading: Icon(Icons.contact_mail),
              onTap: () {
                // Add logic to navigate to the "ContactUsPage."
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),// Add other ListTile items here
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/5 gallon.png',
                width: 300,
                height: 300,
              ),
            ),
          ],
        ),
      ),
    ),
      body: pages[_currentIndex],
      // Wrap the entire content in a SingleChildScrollView

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            backgroundColor: Color(0xFFF6FDFF),
            selectedItemColor: Color(0xFF0663BF),
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: bottomNavIcons
                .asMap()
                .entries
                .map((MapEntry<int, Icon> entry) {
              return BottomNavigationBarItem(
                icon: entry.value,
                label: '',
              );
            })
                .toList(),
          ),
        ),
      ),
    );
  }
  }

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 5), // Add margin to create space from the top
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            // Reduce top padding to zero
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 95,
                        height: 95,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                            begin: Alignment.bottomLeft,
                            // Change to bottom left
                            end: Alignment.topRight, // Change to top right
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Icon(
                        Icons.person,
                        size: 50, // Adjust the size of the icon as needed
                        color: Color(0xFFF6FDFF), // Set the icon color
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi , ",
                      style: TextStyle(
                        fontSize: 18, // Adjust the font size as needed
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF44575B),
                      ),
                    ),
                    Text(
                      "User !",
                      style: TextStyle(
                        fontSize: 20, // Adjust the font size as needed
                        fontWeight: FontWeight.w600, // Make the text semibold
                        color: Color(0xFF44575B),
                      ),
                    ),
                    SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Your Customer Id: ",
                            style: TextStyle(
                              fontSize: 18, // Adjust the font size as needed
                              fontWeight: FontWeight.w500, // Make the text bold
                              color: Color(0xFF44575B),
                            ),
                          ),
                          TextSpan(
                            text: "225641",
                            style: TextStyle(
                              fontSize: 19,
                              // Font size for the additional text
                              fontWeight: FontWeight.w600,
                              // Use FontWeight.w600 for semi-bold
                              color: Color(
                                  0xFF44575B), // You can set the color as needed
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 20, left: 20, bottom: 0),
            // Adjust the top margin
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 4.0
                ),
                borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your next delivery date",
                      style: TextStyle(
                        fontSize: 16,
                        // Set the font size to 16
                        color: Color(0xFFF6FDFF),
                        // Set the text color to FF44557B
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 48,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF6FDFF), // Set the color directly
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          "05.10.2023",
                          style: TextStyle(
                            color:  Color(0xFF44575B),
                            fontWeight: FontWeight.w800,
                            fontSize: 14.5,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your available coupons",
                      style: TextStyle(
                        fontSize: 16,
                        // Set the font size to 16
                        color: Color(0xFFF6FDFF),
                        // Set the text color to FF44557B
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      width: 110,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6FDFF), // Set the color directly
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          "200",
                          style: TextStyle(
                            color: Color(0xFF44575B),
                            fontWeight: FontWeight.w800,
                            fontSize: 14.5,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => OrderWaterPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40, // Width of the cart icon
                    height: 40, // Height of the cart icon
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF6FDFF), // Color of the cart icon
                    ),
                    child: Center(
                      child: Icon(
                        Icons.shopping_cart, // Use the cart icon
                        color: Color(0xFF44575B), // Icon color
                        size: 25, // Icon size
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // Add some spacing between the icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Order Water',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // Add a spacer to push the arrow to the right
                  Icon(
                    Icons.arrow_forward_ios_outlined, // Arrow icon
                    color: Color(0xFFF6FDFF), // Icon color
                    size: 30, // Icon size
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BuyCouponPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40, // Width of the cart icon
                    height: 40, // Height of the cart icon
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF6FDFF), // Color of the cart icon
                    ),
                    child: Center(
                      child: Icon(
                        Icons.card_giftcard, //
                        color: Color(0xFF44575B), // Icon color
                        size: 25, // Icon size
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // Add some spacing between the icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Buy Coupon',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // Add a spacer to push the arrow to the right
                  Icon(
                    Icons.arrow_forward_ios_outlined, // Arrow icon
                    color: Color(0xFFF6FDFF), // Icon color
                    size: 30, // Icon size
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CustodyPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40, // Width of the icon
                    height: 40, // Height of the icon
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF6FDFF), // Color of the icon
                    ),
                    child: Center(
                      child: Icon(
                        Icons.list_alt, // Icon
                        color: Color(0xFF44575B), // Icon color
                        size: 25, // Icon size
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // Add some spacing between the icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Check Custody Items',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // Add a spacer to push the arrow to the right
                  Icon(
                    Icons.arrow_forward_ios_outlined, // Arrow icon
                    color: Color(0xFFF6FDFF), // Icon color
                    size: 30, // Icon size
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TransactionPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40, //
                    height: 40, //
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF6FDFF),  // Color of the cart icon
                    ),
                    child: Center(
                      child: Icon(
                        Icons.featured_play_list_sharp, //
                        color: Color(0xFF44575B), // Icon color
                        size: 25, // Icon size
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // Add some spacing between the icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Check My Transactions',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // Add a spacer to push the arrow to the right
                  Icon(
                    Icons.arrow_forward_ios_outlined, // Arrow icon
                    color: Color(0xFFF6FDFF), // Icon color
                    size: 30, // Icon size
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DeliveryPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF6FDFF),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.motion_photos_pause_rounded,
                        color: Color(0xFF44575B),
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pause or Unpause Delivery',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFFF6FDFF),
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => RechargeForOthersPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF6FDFF),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.money_outlined,
                        color: Color(0xFF44575B),
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Recharge for Others',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RechargeForOthersPage(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFF6FDFF),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),


          ListView.builder(
            shrinkWrap: true,
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(itemList[index]),
                // Add onTap logic for each item if needed.
              );
            },
          ),
        ],
      ),
    );
  }
}