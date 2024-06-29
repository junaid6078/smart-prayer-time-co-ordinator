import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fyp/presentation/TodayDetailPage.dart';
import 'package:prayers_times/prayers_times.dart';
import 'package:intl/intl.dart';

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
      body: Stack(
        children: [
          CustomCard(),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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

    DateTime now = DateTime.now();
    String Date = DateFormat.yMMMMEEEEd().format(now);

    double prayTimeFontSize = height * 0.05;

    DateTime dt1 = DateTime.parse("2021-12-23 11:47:00");
    DateTime dt2 = DateTime.parse("2018-09-12 10:57:00");

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
    return Container(
      height: height * 0.6,
      width: width,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.2),
        border: Border.all(
          color: Colors.teal,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(width * 0.5),
          topRight: Radius.circular(width * 0.5),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          AutoSizeText(
            current,
            style: TextStyle(
              fontSize: height * 0.05,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          SizedBox(
            height: height * 0.05,
            width: width * 0.5,
            child: Card(
              child: Center(
                child: AutoSizeText(
                  Date,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Center(
                      child: AutoSizeText(
                        "ابتدا",
                        style: TextStyle(
                          fontSize: height * 0.1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.4,
                    decoration: BoxDecoration(),
                    child: prayerTimes.currentPrayer() == "isha"
                        ? AutoSizeText(
                            '${TimeOfDay.fromDateTime(prayerTimes.ishaStartTime!).format(context)}',
                            style: TextStyle(
                              fontSize: prayTimeFontSize,
                              color: Colors.black,
                            ),
                          )
                        : prayerTimes.currentPrayer() == "maghrib"
                            ? AutoSizeText(
                                '${TimeOfDay.fromDateTime(prayerTimes.maghribStartTime!).format(context)}',
                                style: TextStyle(
                                  fontSize: prayTimeFontSize,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : prayerTimes.currentPrayer() == "asr"
                                ? AutoSizeText(
                                    '${TimeOfDay.fromDateTime(prayerTimes.asrStartTime!).format(context)}',
                                    style: TextStyle(
                                      fontSize: prayTimeFontSize,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : prayerTimes.currentPrayer() == "dhuhr"
                                    ? AutoSizeText(
                                        '${TimeOfDay.fromDateTime(prayerTimes.dhuhrStartTime!).format(context)}',
                                        style: TextStyle(
                                          fontSize: prayTimeFontSize,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : prayerTimes.currentPrayer() == "fajr"
                                        ? AutoSizeText(
                                            '${TimeOfDay.fromDateTime(prayerTimes.fajrStartTime!).format(context)}',
                                            style: TextStyle(
                                              fontSize: prayTimeFontSize,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        : prayerTimes.currentPrayer() ==
                                                'sunrise'
                                            ? AutoSizeText(
                                                '${TimeOfDay.fromDateTime(prayerTimes.sunrise!).format(context)}',
                                                style: TextStyle(
                                                  fontSize: prayTimeFontSize,
                                                  color: Colors.black,
                                                ),
                                              )
                                            : prayerTimes.currentPrayer() ==
                                                    'ishabefore'
                                                ? Center(
                                                    child: AutoSizeText(
                                                      '${TimeOfDay.fromDateTime(prayerTimes.ishaStartTime!).format(context)}',
                                                      style: TextStyle(
                                                        fontSize:
                                                            prayTimeFontSize,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                : const CircularProgressIndicator(),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Center(
                      child: AutoSizeText(
                        "انتہا",
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.4,
                    decoration: BoxDecoration(),
                    child: prayerTimes.currentPrayer() == "isha"
                        ? AutoSizeText(
                            '${TimeOfDay.fromDateTime(prayerTimes.ishaEndTime!).format(context)}',
                            style: TextStyle(
                              fontSize: prayTimeFontSize,
                              color: Colors.black,
                            ),
                          )
                        : prayerTimes.currentPrayer() == "maghrib"
                            ? AutoSizeText(
                                '${TimeOfDay.fromDateTime(prayerTimes.maghribEndTime!).format(context)}',
                                style: TextStyle(
                                  fontSize: prayTimeFontSize,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : prayerTimes.currentPrayer() == "asr"
                                ? AutoSizeText(
                                    '${TimeOfDay.fromDateTime(prayerTimes.asrEndTime!).format(context)}',
                                    style: TextStyle(
                                      fontSize: prayTimeFontSize,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : prayerTimes.currentPrayer() == "dhuhr"
                                    ? AutoSizeText(
                                        '${TimeOfDay.fromDateTime(prayerTimes.dhuhrEndTime!).format(context)}',
                                        style: TextStyle(
                                          fontSize: prayTimeFontSize,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : prayerTimes.currentPrayer() == "fajr"
                                        ? AutoSizeText(
                                            '${TimeOfDay.fromDateTime(prayerTimes.fajrEndTime!).format(context)}',
                                            style: TextStyle(
                                              fontSize: prayTimeFontSize,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        : prayerTimes.currentPrayer() ==
                                                'sunrise'
                                            ? AutoSizeText(
                                                '${TimeOfDay.fromDateTime(prayerTimes.sunrise!).format(context)}',
                                                style: TextStyle(
                                                  fontSize: prayTimeFontSize,
                                                  color: Colors.black,
                                                ),
                                              )
                                            : prayerTimes.currentPrayer() ==
                                                    'ishabefore'
                                                ? Center(
                                                    child: AutoSizeText(
                                                      '${TimeOfDay.fromDateTime(prayerTimes.fajrStartTime!).format(context)}',
                                                      style: TextStyle(
                                                        fontSize:
                                                            prayTimeFontSize,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                : const CircularProgressIndicator(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            height: height * 0.05,
            width: width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            child: Center(
              child: AutoSizeText(
                "Remaining Time          ${dt1.difference(dt2).runtimeType}",
                style: TextStyle(
                  fontSize: width * 0.05,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
