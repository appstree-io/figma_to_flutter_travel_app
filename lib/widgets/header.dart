import 'package:flutter/material.dart';
import 'package:vacation_time/utils/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Constants.sizeW24,
            const CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.grey,
            ),
            Constants.sizeW10,
            const Text('Hello, Vineetha'),
            const Spacer(),
            Image.asset(IconsAssets.lamp),
            Constants.sizeW24,
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'Where do you \nwant to explore today?',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
