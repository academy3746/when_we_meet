import 'package:flutter/material.dart';

class LoverImage extends StatelessWidget {
  const LoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Image.asset('assets/images/couple_image.png'),
      ),
    );
  }
}
