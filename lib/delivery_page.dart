import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  DateTime? selectedStartDate;
  DateTime? selectedEndDate;
  final TextEditingController messageController = TextEditingController();

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: selectedStartDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ))!;

    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: selectedEndDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ))!;

    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate = picked;
      });
    }
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
                  'Pause your Delivery',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFCCD7DA), // Border color
                  width: 3, // Border thickness
                ),
                color: Color(0xFFF6FDFF), // Background color
              ),
              child: Column(
                children: [
                  // Start Date
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0), // Adjust top, left, and right padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Start Date:',
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xFF44575B),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFCCD7DA), // Border color
                              width: 2, // Border thickness
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () => _selectStartDate(context),
                            child: Text(
                              selectedStartDate != null
                                  ? "${selectedStartDate!.day}/${selectedStartDate!.month}/${selectedStartDate!.year}"
                                  : 'Select date',
                              style: TextStyle(
                                color: Color(0xFF44575B),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // End Date
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0), // Same padding as Start Date
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'End Date:',
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xFF44575B),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFCCD7DA), // Border color
                              width: 2, // Border thickness
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () => _selectEndDate(context),
                            child: Text(
                              selectedEndDate != null
                                  ? "${selectedEndDate!.day}/${selectedEndDate!.month}/${selectedEndDate!.year}"
                                  : 'Select date',
                              style: TextStyle(
                                color: Color(0xFF44575B),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFCCD7DA),
                  width: 3,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Tell us why you want to pause?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF44575B),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        controller: messageController,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 30),
           // Image.asset(
             // 'assets/images/delivery.png', // Replace with the actual image path
           //   width: 200, // Adjust the width as needed
            //  height: 200, // Adjust the height as needed
            //),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF), // Set the background color of the Scaffold
    );
  }
}
