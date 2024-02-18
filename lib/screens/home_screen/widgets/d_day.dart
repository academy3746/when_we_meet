import 'package:flutter/material.dart';
import 'package:when_we_meet/common/constants/gaps.dart';
import 'package:when_we_meet/common/constants/sizes.dart';

class DayRemains extends StatelessWidget {
  const DayRemains({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Gaps.v16,
        Text(
          'U&I',
          style: textTheme.displayLarge,
        ),
        Gaps.v16,
        Text(
          '우리가 처음 만난 날',
          style: textTheme.bodyLarge,
        ),
        Gaps.v16,
        Text(
          '2024.02.17',
          style: textTheme.bodyMedium,
        ),
        Gaps.v16,
        IconButton(
          iconSize: Sizes.size52,
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        Gaps.v16,
        Text(
          'D+100',
          style: textTheme.displayMedium,
        ),
      ],
    );
  }
}
