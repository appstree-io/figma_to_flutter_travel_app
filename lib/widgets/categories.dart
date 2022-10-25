// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vacation_time/pages/destination.dart';
import 'package:vacation_time/state/destination_state.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/utils/text_styles.dart';
import 'package:vacation_time/widgets/favourite_place.dart';
import 'package:vacation_time/widgets/rating_bar.dart';
import 'package:vacation_time/widgets/select_category_tab.dart';
import 'package:vacation_time/widgets/ticker.dart';

class Categories extends ConsumerWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(destinationProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Ticker(title: 'Choose Category'),
        10.verticalSpace,
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
        // Constants.sizeH24,
        24.verticalSpace,
        SizedBox(
          height: 270.sm,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: places
                .map((place) => Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: GestureDetector(
                        onTap: () {
                          print(place.hashCode);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => Destination(
                                    place: place,
                                  )),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Image.network(
                                place.image,
                                fit: BoxFit.cover,
                                height: 246.sm,
                                width: 186.sm,
                              ),
                            ),
                            Positioned(
                              // alignment: AlignmentDirectional.bottomCenter,
                              bottom: 40.h,
                              left: 12.w,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      place.name,
                                      style: TextStyles.poppins(
                                        fontSize: 20.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    // Constants.sizeH06,
                                    06.verticalSpace,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          IconsAssets.location,
                                          // color: Colors.white,
                                        ),
                                        // Constants.sizeW04,
                                        04.horizontalSpace,
                                        Text(
                                          place.country,
                                          style: TextStyles.urbanist(
                                            fontSize: 12.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Constants.sizeH06,
                                    // 06.verticalSpace,
                                    06.verticalSpaceFromWidth,
                                    RatingBar(
                                      place: place,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FavouritePlace(
                              place: place,
                            )
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
