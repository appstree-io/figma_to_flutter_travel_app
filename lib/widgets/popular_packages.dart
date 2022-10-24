import 'package:flutter/material.dart';
import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/widgets/rating_bar.dart';
import 'package:vacation_time/widgets/ticker.dart';

class PopularPackage extends StatelessWidget {
  const PopularPackage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const Ticker(
          title: 'Popular Package',
        ),
        ...places
            .map((place) => Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(right: 24, bottom: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Constants.borderColor,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          place.image,
                          fit: BoxFit.cover,
                          width: 86,
                          height: 116,
                        ),
                      ),
                      Constants.sizeW10,
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  place.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Image.asset(IconsAssets.heart)
                              ],
                            ),
                            Constants.sizeH10,
                            Text(
                              place.price.toString(),
                              style: const TextStyle(color: Colors.red),
                            ),
                            RatingBar(
                              place: place,
                              textColor: Colors.black,
                              iconColor: Colors.black26,
                            ),
                            Text(place.description)
                          ],
                        ),
                      )
                    ],
                  ),
                ))
            .toList()
      ],
    );
  }
}
