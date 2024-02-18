// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:when_we_meet/common/constants/sizes.dart';
import 'package:when_we_meet/screens/home_screen/widgets/d_day.dart';
import 'package:when_we_meet/screens/home_screen/widgets/lover_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var firstDay = DateTime.now();

  void onHeartPressed() {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: Sizes.size300,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  firstDay = date;
                });
              },
            ),
          ),
        );
      },
    );
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
            onHeartPressed: onHeartPressed,
            firstDay: firstDay,
          ),
          const LoverImage(),
        ],
      ),
    );
  }
}
