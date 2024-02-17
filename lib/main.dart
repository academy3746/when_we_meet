import 'package:flutter/material.dart';

void main() {
  runApp(const LoverApp());
}

class LoverApp extends StatelessWidget {
  const LoverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'D-DAY',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Container(),
    );
  }
}
