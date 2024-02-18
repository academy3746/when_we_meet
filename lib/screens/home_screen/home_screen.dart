// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:when_we_meet/screens/home_screen/widgets/d_day.dart';
import 'package:when_we_meet/screens/home_screen/widgets/lover_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var firstDay = DateTime.now();

  void _onHeartedPressed() {
    setState(() {
      firstDay = firstDay.subtract(const Duration(days: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DayRemains(
            onHeartedPressed: _onHeartedPressed,
            firstDay: firstDay,
          ),
          const LoverImage(),
        ],
      ),
    );
  }
}
