import 'package:flutter/material.dart';
import 'package:vacation_time/utils/constants.dart';

class Ticker extends StatelessWidget {
  const Ticker({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
          child: const Text(
            'See all',
            style: TextStyle(
              color: Constants.lightGreyColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {},
        ),
        Constants.sizeW18
      ],
    );
  }
}
