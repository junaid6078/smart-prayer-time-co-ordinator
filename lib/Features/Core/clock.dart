import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';


class MosqueListScreen extends StatefulWidget {
  @override
  _MosqueListScreenState createState() => _MosqueListScreenState();
}

class _MosqueListScreenState extends State<MosqueListScreen> {
  List<Map<String, dynamic>> mosques = [];

  @override
  void initState() {
    super.initState();
    fetchMosques();
  }

  Future<void> fetchMosques() async {
    // Get user's current location
    // LocationData locationData = await Location().getLocation();

    // Replace API_ENDPOINT with the actual API providing mosque data
    final String apiUrl = ' http://api.aladhan.com/v1/calendarByCity/2024/2?city=Karachi&country=Pakistan&method=2';

    try {
      // Make a GET request to the API
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Parse the response JSON and update the mosque list
        setState(() {
          mosques = List<Map<String, dynamic>>.from(json.decode(response.body));
        });
      } else {
        print('Failed to fetch mosques: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mosque List'),
      ),
      body: ListView.builder(
        itemCount: mosques.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("title"),
            subtitle: Text("sub"),
            // You can customize the ListTile with more information if needed
          );
        },
      ),
    );
  }
}
