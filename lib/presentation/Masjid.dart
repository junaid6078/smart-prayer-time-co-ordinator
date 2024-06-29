import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:auto_size_text/auto_size_text.dart';
import '../Domain/Entity/Masjids.dart';
import 'MasjidDetailPage.dart';

class MasjidListPage extends StatefulWidget {
  const MasjidListPage({Key? key}) : super(key: key);

  @override
  _MasjidListPageState createState() => _MasjidListPageState();
}

class _MasjidListPageState extends State<MasjidListPage> {
  late List<Masjid> masjids = [];

  @override
  void initState() {
    super.initState();
    fetchMasjids();
  }

  Future<void> fetchMasjids() async {
    try {
      final response = await http
          .get(Uri.parse('http://10.0.2.2:5000/api/masjids/2024-07-8'));

      if (response.statusCode == 200) {
        List<Masjid> fetchedMasjids = (json.decode(response.body) as List)
            .map((data) => Masjid.fromJson(data))
            .toList();

        setState(() {
          masjids = fetchedMasjids;
        });
      } else {
        throw Exception('Failed to load masjids: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching masjids: $e');
      // Optionally, show an error message or retry mechanism here
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Masjids",
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: masjids.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: masjids.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    masjids[index].name,
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(masjids[index].address),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MasjidDetailPage(masjid: masjids[index]),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
