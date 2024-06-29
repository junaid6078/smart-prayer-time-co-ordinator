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

  AboutTodayPage(
      {super.key,
      required this.date,
      required this.fjr,
      required this.zhr,
      required this.asr,
      required this.mgrb,
      required this.isha,
      required this.weekday});

  @override
  State<AboutTodayPage> createState() => _AboutTodayPageState();
}

class _AboutTodayPageState extends State<AboutTodayPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Today",
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.15,
              width: width * 0.8,
              child: Card(
                color: Color(0xff0f9690),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.8,
              child: Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Container(
                        child: Center(
                          child: Text(
                            "Fajar Prayer",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            widget.fjr,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.8,
              child: Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Container(
                        child: Center(
                          child: Text(
                            "Zuhar Prayer",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            widget.zhr,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.8,
              child: Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Container(
                        child: Center(
                          child: Text(
                            "Asar Prayer",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            widget.asr,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.8,
              child: Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Container(
                        child: Center(
                          child: Text(
                            "Magrib Prayer",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            widget.mgrb,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.8,
              child: Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Container(
                        child: Center(
                          child: Text(
                            "Isha Prayer",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            widget.isha,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
