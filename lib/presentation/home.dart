import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/presentation/Masjid.dart';

import 'HomePage.dart';
import 'ProfilePage.dart';
import 'SearchPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    // ToDayPage(),
    // ProfilePage(),
    MasjidPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          buildNavigationBarItem(Icons.home, 'Home'),
          // buildNavigationBarItem(Icons.today, 'To Day'),
          // buildNavigationBarItem(Icons.person, 'Profile'),
          buildNavigationBarItem(Icons.location_on, 'Masjid')
        ],
      ),
    );
  }

  BottomNavigationBarItem buildNavigationBarItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.teal.shade100,
      icon: Icon(icon),
      label: label,
    );
  }
}

