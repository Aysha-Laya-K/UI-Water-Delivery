import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
//import 'login/signin_page.dart';

class EmirateData {
  final String id;
  final String name;

  EmirateData(this.id, this.name);
}

class SignUpPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFF6FDFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF44575B),
                  ),
                ),
              ),
              SignUpWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpWidget extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  List<EmirateData> emirates = [];
  List<String> locations = [];
  EmirateData? selectedEmirate;
  String? selectedLocation;
  bool isGPSEnabled = false;
  String? latitude;
  String? longitude;

  Future<void> fetchEmirates() async {
    try {
      var response = await http.get(Uri.parse('http://68.183.94.11:91/api/emirates/'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        List<EmirateData> emirateData = data.map((emirate) {
          return EmirateData(emirate['emirate_id'], emirate['name']);
        }).toList();

        setState(() {
          emirates = emirateData;
        });
      } else {
        throw Exception('Failed to load emirates - ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching emirates: $e');
      // Handle the error as needed, e.g., display a message to the user
    }
  }


  Future<void> fetchLocations(String emirateId) async {
    try {
      var response = await http.get(Uri.parse('http://68.183.94.11:91/api/location_emirates/?emirate=$emirateId'));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        setState(() {
          locations.clear(); // Clear existing locations
          for (var location in data['locations']) {
            locations.add(location['location_name']);
          }
          selectedLocation = null; // Reset selected location
        });
      } else {
        throw Exception('Failed to load locations - ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching locations: $e');
      // Handle the error as needed, e.g., display a message to the user
    }
  }


  Future<void> _getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Handle case when user denies access to location
        print('Location permission denied by user.');
        // You might want to display a message to the user informing them that location access is required
      } else if (permission == LocationPermission.deniedForever) {
        // Handle case when user denies access to location permanently
        print('Location permission permanently denied by user.');
        // You might want to redirect the user to settings to enable location permissions
      } else {
        // Permission granted, fetch the current location
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        setState(() {
          latitude = position.latitude.toString();
          longitude = position.longitude.toString();
        });
      }
    } catch (e) {
      print("Error getting location: $e");
      // Handle error as needed, such as showing a snackbar or message to the user
    }
  }


  Future<void> _signUp() async {

    String baseUrl = 'http://68.183.94.11:91'; // Replace with your base URL
    String endpoint = '/api/customers'; // Replace with the endpoint for signup

    // Construct the complete API URL
    String apiUrl = baseUrl + endpoint;


    // Replace the placeholders with actual user input data
    Map<String, dynamic> customerData = {
      "customer_name": "AK travels",
      "building_name": "jhfksdjf",
      "door_house_no": "jdfksjdfk",
      "floor_no": "jsfskjdf",
      "mobile_no": "7458665855",
      "whats_app": "7741526585",
      "email_id": "abcdjdfksjdf@gmail.com",
      "gps_latitude": "565fd465sd5asd",
      "gps_longitude": "554sdfs6d54f65sdf",
      "password": "12345",
      "location": "90dce097-6a58-4853-856e-b1954e489165",
      "emirate": "b5df0642-6070-4d4d-bf36-448d1d46ac6d",
    };

    try {
      var response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode(customerData),
      );

      if (response.statusCode == 200) {
        // Handle successful response
        print('Customer created successfully: ${response.body}');
        // You might want to navigate to a success page or perform other actions
      } else if (response.statusCode == 301) {
        // If it's a 301 redirect, follow the new location
        String newUrl = response.headers['location'] ?? '';
        if (newUrl.isNotEmpty) {
          response = await http.post(
            Uri.parse(newUrl),
            body: {'data': json.encode(customerData)},
          );

          if (response.statusCode == 200) {
            // Handle successful response after redirection
            print('Customer created successfully after redirection: ${response.body}');
            // You might want to navigate to a success page or perform other actions
          } else {
            // Handle error after redirection
            print('Failed to create customer after redirection: ${response.statusCode}');
            // You can display an error message to the user or handle the error accordingly
          }
        } else {
          // Handle no redirection URL found
          print('No redirection URL found');
          // You might want to inform the user or handle this case
        }
      } else {
        // Handle other status codes or errors
        print('Failed to create customer: ${response.statusCode}');
        // You can display an error message to the user or handle the error accordingly
      }
    } catch (e) {
      print('Error creating customer: $e');
      // Handle exceptions or network errors
    }
  }



  @override
  void initState() {
    super.initState();
    fetchEmirates();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
            child: TextField(
              decoration: InputDecoration(
                labelText: 'customer_name',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.person, color: Color(0xFF44575B)),
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
                color: Color(0xFFCCD7DA),
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'mobile_no',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Container(
                  margin: EdgeInsets.only(top: 14.0, left: 10.0, right: 10.0), // Adjust margin as needed
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust padding as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
                    color: Color(0xFFCCD7DA), // Change container background color
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0), // Add top padding to the text
                    child: Text(
                      '+971',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF44575B),
                        fontWeight: FontWeight.w600, // Change text color
                      ),
                    ),
                  ),
                ),
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
                color: Color(0xFFCCD7DA),
                width: 3.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'whats_app',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Container(
                  margin: EdgeInsets.only(top: 14.0, left: 10.0, right: 10.0), // Adjust margin as needed
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust padding as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
                    color: Color(0xFFCCD7DA), // Change container background color
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0), // Add top padding to the text
                    child: Text(
                      '+971',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF44575B),
                        fontWeight: FontWeight.w600, // Change text color
                      ),
                    ),
                  ),
                ),
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
                labelText: 'email_id',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.mail_sharp, color: Color(0xFF44575B)),
              ),
            ),
          ),

          SizedBox(height: 20.0),
          // Sign Up Button in the center with contrasting colors
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
                labelText: 'password',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.lock_person_sharp, color: Color(0xFF44575B)),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20.0),
          // Container for Emirate Dropdown
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
                  margin: EdgeInsets.only(left: 12.5), // Add left margin to the icon
                  child: Icon(
                    Icons.edit_location_sharp,
                    color: Color(0xFF44575B), // Set the icon color to #44575B
                  ),
                ),
                Expanded(
                  child:DropdownButtonFormField<EmirateData>(
                    value: selectedEmirate,
                    items: emirates.map((emirate) {
                      return DropdownMenuItem<EmirateData>(
                        value: emirate,
                        child: Text(emirate.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedEmirate = value;
                        selectedLocation = null; // Reset selected location when Emirate changes
                        if (value != null) {
                          fetchLocations(value.id); // Fetch locations for the selected Emirate's ID
                        }
                      });
                    },
                    hint: Padding(
                      padding: EdgeInsets.only(left: 10.0), // Add left padding to the text
                      child: Text('emirate', style: TextStyle(color: Color(0xFF44575B), fontSize: 16),),
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
                      child: Text('location', style: TextStyle(color: Color(0xFF44575B), fontSize: 16),),
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
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFFF6FDFF),
                width: 3.0,
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isGPSEnabled = !isGPSEnabled;
                  if (isGPSEnabled) {
                    _getCurrentLocation();
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF75DBFB),
                minimumSize: Size(400, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                isGPSEnabled ? 'GPS Enabled' : 'Fetch GPS',
                style: TextStyle(
                  color: Color(0xFFF6FDFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),

          if (isGPSEnabled)
            Column(
              children: [
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
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'gps_latitude',
                      labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      alignLabelWithHint: true,
                      prefixIcon: Icon(Icons.gps_fixed, color: Color(0xFF44575B)),
                    ),
                    controller: TextEditingController(text: latitude),
                    readOnly: true, // Make it non-editable
                  ),
                ),
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
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'gps_longitude',
                      labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      alignLabelWithHint: true,
                      prefixIcon: Icon(Icons.gps_fixed, color: Color(0xFF44575B)),
                    ),
                    controller: TextEditingController(text: longitude),
                    readOnly: true, // Make it non-editable
                  ),
                ),
              ],
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
                labelText: 'building_name',
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
                labelText: 'floor_no',
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
                labelText: 'door_house_no',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.door_sliding_outlined, color: Color(0xFF44575B)),
              ),
            ),
          ),
    /*SizedBox(height: 20.0),
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
          ),*/
         /* SizedBox(height: 20.0),
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
                labelText: 'Landline Number',
                labelStyle: TextStyle(fontSize: 16.0, color: Color(0xFF44575B),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.phone, color: Color(0xFF44575B)),
              ),
            ),
          ),*/
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _signUp,
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
              'Sign Up',
              style: TextStyle(
                color: Color(0xFFF6FDFF),
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
          ),
          /*SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Already have an account?", style: TextStyle(color: Color(0xFF44575B)),),
              TextButton(
                onPressed: _navigateToSignInPage,
                child: Text('Sign In', style: TextStyle(color: Color(0xFF44575B), fontSize: 16.0, fontWeight: FontWeight.w600),),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Geolocator
  GeolocatorPlatform.instance;
  runApp(SignUpPage());
}
