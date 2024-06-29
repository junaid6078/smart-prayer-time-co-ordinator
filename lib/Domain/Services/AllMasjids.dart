import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Entity/Masjids.dart';

Future<List<Masjid>> getAllMasjids() async {
  final response =
      await http.get(Uri.parse('http://localhost:5000/api/masjids'));

  if (response.statusCode == 200) {
    // Parse the JSON response
    List<dynamic> jsonList = json.decode(response.body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return jsonList.map((json) => Masjid.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load prayer timings');
  }
}
