import 'package:flutter/material.dart';
import 'package:fyp/presentation/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen for 2 seconds
    Future.delayed(
      Duration(seconds: 2),
      () {
        // Navigate to the next screen after 2 seconds
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // Customize the background color
      body: Center(
        child: Text(
          'Smart Prayer Time Coordinator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
