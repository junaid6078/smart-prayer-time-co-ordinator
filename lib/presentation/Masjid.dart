import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MasjidPage extends StatefulWidget {
  const MasjidPage({Key? key,}) : super(key: key);

  @override
  State<MasjidPage> createState() => _MasjidPageState();
}

class _MasjidPageState extends State<MasjidPage> {
  int? _expandedIndex;

  @override
  Widget build(BuildContext context) {
    String fjr = "12:00";
    String zhr = "12:00";
    String asr = "12:00";
    String mgrb = "12:00";
    String isha = "12:00";
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Masjids",
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xff0f9690),
            child: ExpansionTile(
              trailing: Text(
                (index + 1).toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              title: AutoSizeText(
                "جامع مسجد عمر فاروق رضہ",
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: AutoSizeText(
                "secotor 11A North Karachi",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Fajar: ${fjr}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Zuhar: ${zhr}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Asr: ${asr}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Magrib: ${mgrb}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Isha: ${isha}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                // Add more details or widgets as needed
              ],
            ),
          );
        },
      ),
    );
  }
}
