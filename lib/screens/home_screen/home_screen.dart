import 'package:flutter/material.dart';
import 'package:when_we_meet/screens/home_screen/widgets/d_day.dart';
import 'package:when_we_meet/screens/home_screen/widgets/lover_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const SafeArea(
        top: true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DayRemains(),
            LoverImage(),
          ],
        ),
      ),
    );
  }
}
