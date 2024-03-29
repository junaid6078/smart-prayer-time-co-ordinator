import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Domain/Services/prayertimevary.dart';

class MasjidPage extends StatefulWidget {
  const MasjidPage({super.key});

  @override
  State<MasjidPage> createState() => _MasjidPageState();
}

class _MasjidPageState extends State<MasjidPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Masjids",
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.45,
            width: width * double.infinity,
            child: Card(
              child: Center(
                child: Text(
                  "Map",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          AutoSizeText(
            "List",
            style: TextStyle(fontSize: height * 0.02),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, snapshot) {
                return Card(
                  color: Color(0xff0f9690),
                  elevation: 3,
                  child: ListTile(
                    title: AutoSizeText("Masjid name"),
                    subtitle: AutoSizeText("Location"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
