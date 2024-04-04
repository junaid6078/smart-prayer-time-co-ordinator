import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MasjidPage extends StatefulWidget {
  final String fjr;
  final String zhr;
  final String asr;
  final String mgrb;
  final String isha;
  const MasjidPage({
    Key? key,
    required this.fjr,
    required this.zhr,
    required this.asr,
    required this.mgrb,
    required this.isha,
  }) : super(key: key);

  @override
  State<MasjidPage> createState() => _MasjidPageState();
}

class _MasjidPageState extends State<MasjidPage> {
  int? _expandedIndex;

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
      body: ListView.builder(
        physics: ScrollPhysics(),
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fajar: ${widget.fjr}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Zuhar: ${widget.zhr}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Asr: ${widget.asr}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Magrib: ${widget.mgrb}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Isha: ${widget.isha}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
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
