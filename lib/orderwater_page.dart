import 'package:flutter/material.dart';

class OrderWaterPage extends StatefulWidget {
  @override
  _OrderWaterPageState createState() => _OrderWaterPageState();
}

class _OrderWaterPageState extends State<OrderWaterPage> {
  int quantity = 0;
  bool isCheckboxChecked = true;
  bool onlinePayment = false;
  bool cashOnDelivery = false;
  int requiredEmptyBottles = 0;
  int totalNetAmount = 0;

  final TextEditingController emptyBottlesController = TextEditingController();

  DateTime? selectedDate; // Initialize selectedDate as a nullable DateTime

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity -= 1;
      });
    }
  }

  void incrementQuantity() {
    setState(() {
      quantity += 1;
    });
  }

  void toggleCheckbox() {
    setState(() {
      isCheckboxChecked = !isCheckboxChecked;
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
  void updateTotalAmount() {
    setState(() {
      int emptyBottles = int.tryParse(emptyBottlesController.text) ?? 0;
      int totalAmount = quantity * 450;
      int emptyBottleAmount = emptyBottles * 20;
      int netAmount = totalAmount + emptyBottleAmount;
      // Update the total net amount in the state
      totalNetAmount = netAmount;
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
  void initState() {
    super.initState();
    emptyBottlesController.addListener(updateTotalAmount);
  }
  Widget build(BuildContext context) {
    int totalAmount = quantity * 450; // Calculate the total amount

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
                  'Place Your Order Now',
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
              width: 360,
              height: 680, // Adjust the height to accommodate the new elements
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
                    left: -60, // Adjust position as needed
                    top: -5, // Adjust position as needed
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/bigbottle.png', // Replace with your image asset path
                          width: 250, // Adjust the image width
                          height: 220, // Adjust the image height
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0, left: 70.0), // Add top and left margins here
                          child: Text(
                            '5 Gallon Water',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 110.0),
                          child: Text(
                            'Rate:                  AED 450',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0, left: 97),
                                child: Text(
                                  'Qty:  ',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF44575B),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0), // Add top and bottom margin
                                child: Container(
                                  width: 40, // Adjust the width of the box as needed
                                  height: 40, // Adjust the height of the box as needed
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                                    ), // Background gradient from left bottom to right top
                                    borderRadius: BorderRadius.circular(5), // Adjust the border radius
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0), // Add bottom margin
                                        child: IconButton(
                                          icon: Icon(Icons.remove, color: Color(0xFFF6FDFF), size: 27),
                                          onPressed: decrementQuantity,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                '$quantity', // Display the current quantity here
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF44575B),
                                ),
                              ),
                              SizedBox(width: 16),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0), // Add top and bottom margin
                                child: Container(
                                  width: 40, // Adjust the width of the box as needed
                                  height: 40, // Adjust the height of the box as needed
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                                    ), // Background gradient from left bottom to right top
                                    borderRadius: BorderRadius.circular(5), // Adjust the border radius
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0), // Add bottom margin
                                        child: IconButton(
                                          icon: Icon(Icons.add, color: Color(0xFFF6FDFF), size: 27),
                                          onPressed: incrementQuantity,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 95),
                          child: Text(
                            'Total Amount:    AED $totalAmount',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF44575B),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'No.of empty bottles to be returned: ',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF44575B),
                                  ),
                                ),
                                SizedBox(
                                  width: 10, // Adjust the width to create space between text and the box
                                ),
                                Container(
                                  width: 60, // Adjust the width of the box as needed
                                  height: 40, // Adjust the height of the box as needed
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFFCCD7DA),
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0', // Quantity text
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF44575B),// Text color
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Required empty bottles: ',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF44575B),
                                  ),
                                ),
                                Checkbox(
                                  value: isCheckboxChecked,
                                  onChanged: (value) {
                                    toggleCheckbox();
                                  },
                                  activeColor: Color(0xFF0663BF), // Checked color
                                  checkColor: Colors.white, // Checked icon color
                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return Color(0xFF0663BF); // Checked color
                                    }
                                    return Color(0xFFF6FDFF);// Unchecked color
                                  }),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5), // Border radius
                                    side: BorderSide(color: Color(0xFFCCD7DA), width: 2), // Border color and width
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (isCheckboxChecked)
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'No.of empty bottles required: ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF44575B),
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Container(
                                    width: 60,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Color(0xFFCCD7DA),
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: TextField(
                                        controller: emptyBottlesController,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF44575B),
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Empty bottle amount:                            AED 20',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF44575B),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total net amount:',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF44575B),
                                    ),
                                  ),
                                  SizedBox(width: 142), // Create space between text and the box
                                  Container(
                                    width: 60, // Adjust the width of the box as needed
                                    height: 40, // Adjust the height of the box as needed
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Color(0xFFCCD7DA),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$totalNetAmount', // Display the total net amount here
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF44575B), // Text color
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Select delivery date:',
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
                              'Select your payment option:                             ',
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
                              activeColor: Color(0xFF0663BF), // Checked color
                              checkColor: Colors.white, // Checked icon color
                              fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Color(0xFF0663BF); // Checked color
                                }
                                return Color(0xFFF6FDFF); // Unchecked color
                              }),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5), // Border radius
                                side: BorderSide(color: Color(0xFFCCD7DA), width: 1.5), // Border color and width
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
                              activeColor: Color(0xFF0663BF), // Checked color
                              checkColor: Colors.white, // Checked icon color
                              fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Color(0xFF0663BF); // Checked color
                                }
                                return Color(0xFFF6FDFF);// Unchecked color
                              }),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5), // Border radius
                                side: BorderSide(color: Color(0xFFCCD7DA), width: 2), // Border color and width
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
                            borderRadius: BorderRadius.circular(20), // Set the border radius to curve all four corners to 20
                            gradient: LinearGradient(
                              colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your logic to send feedback here
                              print('placing order...');
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.all(0),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 40,
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
                        SizedBox(height: 4),




                      ],
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