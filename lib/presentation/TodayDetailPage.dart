import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutTodayPage extends StatefulWidget {
  final String date;
  final String fjr;
  final String zhr;
  final String asr;
  final String mgrb;
  final String isha;
  final String weekday;
  final String hijridate;
  final String hijrimonth;
  final String hijriyear;

  AboutTodayPage(
      {super.key,
      required this.date,
      required this.fjr,
      required this.zhr,
      required this.asr,
      required this.mgrb,
      required this.isha,
      required this.weekday,
      required this.hijridate,
      required this.hijrimonth,
      required this.hijriyear});

  @override
  State<AboutTodayPage> createState() => _AboutTodayPageState();
}

class _AboutTodayPageState extends State<AboutTodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Today",
          style:
              TextStyle(color: Color(0xff0f9690), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            color: Color(0xff0f9690),
            child: ListTile(
              title: Text(widget.date),
              subtitle: widget.weekday == "1"
                  ? Text("Monday")
                  : widget.weekday == "2"
                      ? Text("Tuesday")
                      : widget.weekday == "3"
                          ? Text("Wednesday")
                          : widget.weekday == "4"
                              ? Text("Thursday")
                              : widget.weekday == "5"
                                  ? Text("Friday")
                                  : widget.weekday == "6"
                                      ? Text("Saturday")
                                      : Text("Sunday"),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            title: Text('fajr : \t\t\t\t\t' + widget.fjr),
          ),
          ListTile(
            title: Text('zuhr : \t\t\t\t\t' + widget.zhr),
          ),
          ListTile(
            title: Text('asr : \t\t\t\t\t' + widget.asr),
          ),
          ListTile(
            title: Text('maghrib : \t\t\t\t\t' + widget.mgrb),
          ),
          ListTile(
            title: Text('isha : \t\t\t\t\t' + widget.isha),
          ),
        ],
      ),
    );
  }
}
