import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Entity/PrayerTiming.dart';

Future<List<PrayerTiming>> getAllPrayerTimings() async {
  final response =
      await http.get(Uri.parse('http://192.168.10.219:8080/api/prayertimings'));

  if (response.statusCode == 200) {
    // Parse the JSON response
    List<dynamic> jsonList = json.decode(response.body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return jsonList.map((json) => PrayerTiming.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load prayer timings');
  }
}

