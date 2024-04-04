import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Domain/Services/prayertimevary.dart';
import 'package:fyp/presentation/TodayDetailPage.dart';
import 'dart:async';
import 'package:prayers_times/prayers_times.dart';
import 'package:intl/intl.dart';
import '../Domain/Entity/PrayerTiming.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: Column(
        children: [
          CustomCard(height: height * 0.3, width: width),
          Text(
            "Coming Prayer Times",
            style: TextStyle(fontSize: height * 0.02),
          ),
          const PrayerTimeVaryList(),
          // PrayerTimingList(),
        ],
      ),
    );
  }
}

class PrayerTimeVaryList extends StatelessWidget {
  const PrayerTimeVaryList({Key? key});

  @override
  Widget build(BuildContext context) {
    String start = "12:00";
    String end = "12:00";

    return Expanded(
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          DateTime now = DateTime.now().add(Duration(days: index));
          String formattedDate = DateFormat('dd MMM').format(now);
          return Card(
            color: Colors.teal.shade300,
            elevation: 3,
            child: ListTile(
              title: Text("$formattedDate\t\t\t\t\t\t\t\t\t\t\t\t\t"
                  "Start : "
                  "$start\t\t\t\t\t\t\t\t\t\t\t\t\t"
                  "End : "
                  "$end"),
            ),
          );
        },
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final double height;
  final double width;

  const CustomCard({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    Color startpray = Colors.green;
    Color endpray = Colors.red;
    double startfontsize = height * 0.08;
    double timefontsize = height * 0.1;
    // Define the geographical coordinates for the location
    Coordinates coordinates = Coordinates(24.8607, 67.0011);

    // Specify the calculation parameters for prayer times
    PrayerCalculationParameters params = PrayerCalculationMethod.karachi();
    params.madhab = PrayerMadhab.hanafi;

    // Create a PrayerTimes instance for the specified location
    PrayerTimes prayerTimes = PrayerTimes(
      coordinates: coordinates,
      calculationParameters: params,
      precision: true,
      locationName: 'Asia/Karachi',
    );

    String Date = DateFormat('dd MMM yyyy').format(DateTime.now());

    String current = prayerTimes.currentPrayer() == "dhuhr"
        ? "ظھر"
        : prayerTimes.currentPrayer() == "asr"
            ? "عصر"
            : prayerTimes.currentPrayer() == "maghrib"
                ? "مغرب"
                : prayerTimes.currentPrayer() == "isha"
                    ? "عشاء"
                    : prayerTimes.currentPrayer() == "fajr"
                        ? "فجر"
                        : prayerTimes.currentPrayer() == "sunrise"
                            ? "صبح بخیر"
                            : "شب بخیر";

    return SizedBox(
      height: height,
      width: width,
      child: Card(
        color: const Color(0xff0f9690),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AutoSizeText(Date, style: TextStyle(fontSize: 18),),
                  AutoSizeText(
                    "$current",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: height * 0.2,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutTodayPage(
                      date: DateTime.now().toUtc().toString(),
                      fjr: TimeOfDay.fromDateTime(prayerTimes.fajrStartTime!)
                          .format(context),
                      zhr: TimeOfDay.fromDateTime(prayerTimes.dhuhrStartTime!)
                          .format(context),
                      asr: TimeOfDay.fromDateTime(prayerTimes.asrStartTime!)
                          .format(context),
                      mgrb:
                          TimeOfDay.fromDateTime(prayerTimes.maghribStartTime!)
                              .format(context),
                      isha: TimeOfDay.fromDateTime(prayerTimes.ishaStartTime!)
                          .format(context),
                      weekday: DateTime.now().weekday.toString(),
                      hijridate: '12',
                      hijrimonth: '12',
                      hijriyear: '2000',
                    ),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: height * 0.45,
                  width: width * 0.45,
                  child: Card(
                    color: Colors.teal.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          "Start",
                          style: TextStyle(
                            fontSize: startfontsize,
                          ),
                        ),
                        prayerTimes.currentPrayer() == "isha"
                            ? AutoSizeText(
                                '${TimeOfDay.fromDateTime(prayerTimes.ishaStartTime!).format(context)}',
                                style: TextStyle(
                                  fontSize: timefontsize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )
                            : current == "maghrib"
                                ? AutoSizeText(
                                    '${TimeOfDay.fromDateTime(prayerTimes.maghribStartTime!).format(context)}',
                                    style: TextStyle(
                                      fontSize: timefontsize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                : prayerTimes.currentPrayer() == "asr"
                                    ? AutoSizeText(
                                        '${TimeOfDay.fromDateTime(prayerTimes.asrStartTime!).format(context)}',
                                        style: TextStyle(
                                          fontSize: timefontsize,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )
                                    : prayerTimes.currentPrayer() == "dhuhr"
                                        ? AutoSizeText(
                                            '${TimeOfDay.fromDateTime(prayerTimes.dhuhrStartTime!).format(context)}',
                                            style: TextStyle(
                                              fontSize: timefontsize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          )
                                        : prayerTimes.currentPrayer() == "fajr"
                                            ? AutoSizeText(
                                                '${TimeOfDay.fromDateTime(prayerTimes.fajrStartTime!).format(context)}',
                                                style: TextStyle(
                                                  fontSize: timefontsize,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green,
                                                ),
                                              )
                                            : prayerTimes.currentPrayer() ==
                                                    'sunrise'
                                                ? AutoSizeText(
                                                    '${TimeOfDay.fromDateTime(prayerTimes.sunrise!).format(context)}',
                                                    style: TextStyle(
                                                      fontSize: timefontsize,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green,
                                                    ),
                                                  )
                                                : prayerTimes.currentPrayer() ==
                                                        'ishabefore'
                                                    ? AutoSizeText(
                                                        '${TimeOfDay.fromDateTime(prayerTimes.ishaEndTime!).format(context)}',
                                                        style: TextStyle(
                                                          fontSize:
                                                              timefontsize,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.green,
                                                        ),
                                                      )
                                                    : const CircularProgressIndicator(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.45,
                  width: width * 0.45,
                  child: Card(
                    color: Colors.teal.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          "End",
                          style: TextStyle(
                            fontSize: startfontsize,
                          ),
                        ),
                        prayerTimes.currentPrayer() == "isha"
                            ? AutoSizeText(
                                '${TimeOfDay.fromDateTime(prayerTimes.ishaEndTime!).format(context)}',
                                style: TextStyle(
                                  fontSize: timefontsize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )
                            : prayerTimes.currentPrayer() == "maghrib"
                                ? AutoSizeText(
                                    '${TimeOfDay.fromDateTime(prayerTimes.maghribEndTime!).format(context)}',
                                    style: TextStyle(
                                      fontSize: timefontsize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  )
                                : prayerTimes.currentPrayer() == "asr"
                                    ? AutoSizeText(
                                        '${TimeOfDay.fromDateTime(prayerTimes.asrEndTime!).format(context)}',
                                        style: TextStyle(
                                          fontSize: timefontsize,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      )
                                    : prayerTimes.currentPrayer() == "dhuhr"
                                        ? AutoSizeText(
                                            '${TimeOfDay.fromDateTime(prayerTimes.dhuhrEndTime!).format(context)}',
                                            style: TextStyle(
                                              fontSize: timefontsize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          )
                                        : prayerTimes.currentPrayer() == "fajr"
                                            ? AutoSizeText(
                                                '${TimeOfDay.fromDateTime(prayerTimes.fajrEndTime!).format(context)}',
                                                style: TextStyle(
                                                  fontSize: timefontsize,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                ),
                                              )
                                            : prayerTimes.currentPrayer() ==
                                                    'sunrise'
                                                ? AutoSizeText(
                                                    '${TimeOfDay.fromDateTime(prayerTimes.sunrise!).format(context)}',
                                                    style: TextStyle(
                                                      fontSize: timefontsize,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.red,
                                                    ),
                                                  )
                                                : prayerTimes.currentPrayer() ==
                                                        'ishabefore'
                                                    ? AutoSizeText(
                                                        '${TimeOfDay.fromDateTime(prayerTimes.fajrStartTime!).format(context)}',
                                                        style: TextStyle(
                                                          fontSize:
                                                              timefontsize,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.green,
                                                        ),
                                                      )
                                                    : const CircularProgressIndicator(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
