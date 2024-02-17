import 'package:flutter/material.dart';
import 'package:when_we_meet/screens/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const LoverApp());
}

class LoverApp extends StatelessWidget {
  const LoverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'When we met',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF80AB),
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
