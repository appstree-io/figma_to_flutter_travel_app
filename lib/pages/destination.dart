import 'package:flutter/material.dart';

import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/widgets/rating_bar.dart';

class Destination extends StatelessWidget {
  const Destination({
    Key? key,
    required this.place,
  }) : super(key: key);
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            place.image,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45,
                  Colors.black
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 48),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(IconsAssets.heart),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            place.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(IconsAssets.location),
                          Constants.sizeW08,
                          Text(
                            place.country,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Constants.sizeH24,
                      Text(
                        place.description,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Constants.sizeH20,
                      RatingBar(
                        place: place,
                        textColor: Colors.white,
                        iconColor: Colors.white,
                      ),
                      Constants.sizeH20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${place.price}/person',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 16,
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Constants.starIconColor,
                              ),
                            ),
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
