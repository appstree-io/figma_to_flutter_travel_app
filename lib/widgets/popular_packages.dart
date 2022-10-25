// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/pages/destination.dart';
import 'package:vacation_time/state/destination_state.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/utils/text_styles.dart';
import 'package:vacation_time/widgets/rating_bar.dart';
import 'package:vacation_time/widgets/ticker.dart';

class PopularPackage extends ConsumerWidget {
  const PopularPackage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(destinationProvider);
    final notifier = ref.watch(destinationProvider.notifier);

    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const Ticker(
          title: 'Popular Package',
        ),
        ...places
            .map((place) => GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => Destination(
                            place: place,
                          )),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20.r),
                    margin: const EdgeInsets.only(right: 24, bottom: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      border: Border.all(
                        color: Constants.borderColor,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            place.image,
                            fit: BoxFit.cover,
                            width: 86.w,
                            height: 116.h,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    place.name,
                                    style: TextStyles.urbanist(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      notifier.fav(place);
                                    },
                                    child: Image.asset(
                                      IconsAssets.heartRed,
                                      color: place.isFavourite
                                          ? null
                                          : Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              Constants.sizeH10,
                              Text(
                                place.price.toInt().toString(),
                                style: TextStyles.urbanist(
                                    fontSize: 14,
                                    color: const Color(0xFFFD5B1F)),
                              ),
                              06.verticalSpace,
                              RatingBar(
                                place: place,
                                textColor: Colors.black,
                                iconColor: Colors.black26,
                              ),
                              08.verticalSpace,
                              Text(
                                place.description,
                                style: TextStyles.urbanist(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
            .toList()
      ],
    );
  }
}
