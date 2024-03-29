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

class PrayerTimingList extends StatelessWidget {
  late Future<List<PrayerTiming>> prayerTimings;

  PrayerTimingList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PrayerTiming>>(
      future: getAllPrayerTimings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text('No prayer timings available.'),
          );
        } else {
          final prayerTimings = snapshot.data;

          return Card(
            color: Colors.amber,
            elevation: 3,
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text('Date: ${prayerTimings![0].date}'),
            ),
          );
        }
      },
    );
  }
}
