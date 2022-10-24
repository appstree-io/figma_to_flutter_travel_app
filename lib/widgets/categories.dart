import 'package:flutter/material.dart';
import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/pages/destination.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/widgets/favourite_place.dart';
import 'package:vacation_time/widgets/rating_bar.dart';
import 'package:vacation_time/widgets/select_category_tab.dart';
import 'package:vacation_time/widgets/ticker.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Ticker(title: 'Choose Category'),
        Row(
          children: const [
            SelectCategoryTab(
              color: Colors.green,
              emoji: '🏝',
              text: ' Beach',
            ),
            Constants.sizeW24,
            SelectCategoryTab(
              color: Constants.borderColor,
              emoji: '🗻',
              text: ' Mountain',
            ),
          ],
        ),
        Constants.sizeH24,
        SizedBox(
          height: 280,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: places
                .map((place) => Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => Destination(place: place)),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                place.image,
                                fit: BoxFit.cover,
                                height: 246,
                                width: 186,
                              ),
                            ),
                            Positioned(
                              // alignment: AlignmentDirectional.bottomCenter,
                              bottom: 50,
                              left: 10,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      place.name,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Constants.sizeH06,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          IconsAssets.location,
                                          // color: Colors.white,
                                        ),
                                        Constants.sizeW04,
                                        Text(
                                          place.country,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Constants.sizeH06,
                                    RatingBar(
                                      place: place,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FavouritePlace(place: place)
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
