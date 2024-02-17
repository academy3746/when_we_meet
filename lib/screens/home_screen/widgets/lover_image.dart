import 'package:flutter/material.dart';

class LoverImage extends StatelessWidget {
  const LoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2;

    return Center(
      child: Image.asset(
        'assets/images/couple_image.png',
        height: height,
      ),
    );
  }
}
