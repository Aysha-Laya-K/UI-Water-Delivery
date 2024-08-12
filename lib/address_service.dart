import 'package:flutter/material.dart';


class AddressChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Color(0xFF44575B),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous page (settings page)
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFF6FDFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(
                  'Address Change Request',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
              AddressChangeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddressChangeWidget extends StatefulWidget {
  @override
  _AddressChangeWidgetState createState() => _AddressChangeWidgetState();
}

class _AddressChangeWidgetState extends State<AddressChangeWidget> {
  // Function to navigate to the SignInPage
  void _navigateToSignInPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddressChangePage(),
      ),
    );
  }
  String? selectedEmirate; // Nullable String
  String? selectedLocation; // Nullable String

  // Define a list of emirates and locations (you can populate this as needed)
  List<String> emirates = ['Emirate 1', 'Emirate 2', 'Emirate 3'];
  List<String> locations = ['Location 1', 'Location 2', 'Location 3'];


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.transparent, // Set the background color to transparent
        borderRadius: BorderRadius.circular(20.0), // Apply rounded corners
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 2.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Street Number',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.share_location_rounded, color: Color(0xFF44575B)),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Building Number',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.location_city_rounded, color: Color(0xFF44575B)),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Floor Number',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.format_list_numbered_rtl_rounded, color: Color(0xFF44575B)),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Door Number',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.door_sliding_outlined, color: Color(0xFF44575B)),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nearest Landmark',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.not_listed_location, color: Color(0xFF44575B)),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.phone, color: Color(0xFF44575B)),
              ),
            ),
          ),// Email or Mobile Number TextField

          SizedBox(height: 20.0),

          Container(
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA),
                width: 3.0,
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 13.5), // Add left margin to the icon
                  child: Icon(
                    Icons.my_location,
                    color: Color(0xFF44575B), // Set the icon color to #44575B
                  ),
                ),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedLocation,
                    items: locations.map((location) {
                      return DropdownMenuItem<String>(
                        value: location,
                        child: Text(location),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedLocation = value;
                      });
                    },
                    hint: Padding(
                      padding: EdgeInsets.only(left: 12.0), // Add left padding to the text
                      child: Text('Select Location', style: TextStyle(color: Color(0xFF44575B), fontSize: 16),),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none, // Set the border to none
                    ),
                    style: TextStyle(color: Color(0xFF44575B)),
                    dropdownColor: Color(0xFFF6FDFF), // Set the dropdown background color
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFCCD7DA), // Change the border color
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Type New Address here',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.note_alt, color: Color(0xFF44575B)),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null, // Set maxLines to null for multiline input
              textInputAction: TextInputAction.newline, // Set keyboard's action button to newline
            ),
          ),


          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle sign-up logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(400, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: Color(0xFFF6FDFF),
                  width: 3.0,
                ),
              ),
              elevation: 0, // Remove the bottom border shadow
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Color(0xFFF6FDFF),
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(AddressChangePage());
}
