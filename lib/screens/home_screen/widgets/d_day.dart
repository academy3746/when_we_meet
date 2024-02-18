import 'package:flutter/material.dart';
import 'package:when_we_meet/common/constants/gaps.dart';
import 'package:when_we_meet/common/constants/sizes.dart';

class DayRemains extends StatelessWidget {
  const DayRemains({
    super.key,
    required this.onHeartedPressed,
    required this.firstDay,
  });

  final GestureTapCallback onHeartedPressed;

  final DateTime firstDay;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var now = DateTime.now();

    var dayWeMet =
        DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1;

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
          '${firstDay.year}. ${firstDay.month}. ${firstDay.day}',
          style: textTheme.bodyMedium,
        ),
        Gaps.v16,
        IconButton(
          iconSize: Sizes.size52,
          onPressed: onHeartedPressed,
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        Gaps.v16,
        Text(
          'D+$dayWeMet',
          style: textTheme.displayMedium,
        ),
      ],
    );
  }
}
