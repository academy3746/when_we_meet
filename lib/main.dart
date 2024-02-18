import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:when_we_meet/common/constants/sizes.dart';
import 'package:when_we_meet/screens/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const LoverApp());
}

class LoverApp extends StatelessWidget {
  const LoverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'U&I',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF80AB),
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'sunflower',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: Sizes.size80,
            fontWeight: FontWeight.w700,
            fontFamily: 'parisienne',
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: Sizes.size50,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: Sizes.size30,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: Sizes.size20,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
