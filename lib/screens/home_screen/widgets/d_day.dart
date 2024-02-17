import 'package:flutter/material.dart';
import 'package:when_we_meet/common/constants/gaps.dart';

class DayRemains extends StatelessWidget {
  const DayRemains({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.v16,
        const Text('U & I'),
        Gaps.v16,
        const Text('우리가 처음 만난 날'),
        Gaps.v16,
        const Text('2024.02.17'),
        Gaps.v16,
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        Gaps.v16,
        const Text('D+1'),
      ],
    );
  }
}
