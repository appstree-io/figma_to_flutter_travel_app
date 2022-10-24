import 'package:flutter/material.dart';
import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/utils/constants.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({
    Key? key,
    required this.place,
    required this.textColor,
    required this.iconColor,
  }) : super(key: key);
  final Place place;
  final Color textColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(5, (index) {
          final rating = place.rating;
          return Icon(
            Icons.star,
            color: rating.round().toInt() > index
                ? Constants.starIconColor
                : iconColor,
            size: 20,
          );
        }).toList(),
        Constants.sizeW06,
        Text(
          '4.8',
          style: TextStyle(color: textColor),
        )
      ],
    );
  }
}
