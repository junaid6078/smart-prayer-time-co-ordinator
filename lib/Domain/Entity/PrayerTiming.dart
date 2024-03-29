import 'dart:convert';
import 'package:http/http.dart' as http;

class PrayerTiming {
  final String date;
  final String weekday;
  final String day;
  final String month;
  final String year;
  final String fajr;
  final String sunrise;
  final String zuhr;
  final String asr;
  final String magrib;
  final String isha;
  final String dateHijri;
  final String dayHijri;
  final String monthHijri;
  final String yearHijri;
  final String holidayHijri;
  final int id;

  PrayerTiming({
    required this.date,
    required this.weekday,
    required this.day,
    required this.month,
    required this.year,
    required this.fajr,
    required this.sunrise,
    required this.zuhr,
    required this.asr,
    required this.magrib,
    required this.isha,
    required this.dateHijri,
    required this.dayHijri,
    required this.monthHijri,
    required this.yearHijri,
    required this.holidayHijri,
    required this.id,
  });

  factory PrayerTiming.fromJson(Map<String, dynamic> json) {
    return PrayerTiming(
      date: json['date'].toString(),
      weekday: json['weekday'].toString(),
      day: json['day'].toString(),
      month: json['month'].toString(),
      year: json['year'].toString(),
      fajr: json['fajr'].toString(),
      sunrise: json['sunrise'].toString(),
      zuhr: json['zuhr'].toString(),
      asr: json['asr'].toString(),
      magrib: json['magrib'].toString(),
      isha: json['isha'].toString(),
      dateHijri: json['dateHijri'].toString(),
      dayHijri: json['dayHijri'].toString(),
      monthHijri: json['monthHijri'].toString(),
      yearHijri: json['yearHijri'].toString(),
      holidayHijri: json['holidayHijri'].toString(),
      id: json['id'],
    );
  }
}
