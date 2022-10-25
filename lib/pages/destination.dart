// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/state/destination_state.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/utils/text_styles.dart';
import 'package:vacation_time/widgets/rating_bar.dart';

class Destination extends ConsumerWidget {
  const Destination({
    Key? key,
    required this.place,
  }) : super(key: key);
  final Place place;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(destinationProvider.notifier);
    final padding = MediaQuery.of(context).viewPadding;
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
              padding: EdgeInsets.only(
                // top: padding.top * 0.5,
                left: 24.r,
                right: 24.r,
                bottom: padding.bottom,
              ),
              // horizontal: 24.0, vertical: padding.vertical * 0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // const SizedBox(height: 48),
                      48.verticalSpace,
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
                          GestureDetector(
                            onTap: () {
                              notifier.fav(place);
                            },
                            child: Image.asset(
                              IconsAssets.heartRed,
                              color: place.isFavourite ? null : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            place.name,
                            style: TextStyles.poppins(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(IconsAssets.location),
                          Constants.sizeW08,
                          Text(
                            place.country,
                            style: TextStyles.urbanist(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Constants.sizeH24,
                      Text(
                        place.description,
                        style: TextStyles.urbanist(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
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
                            '${place.price.toInt()}/person',
                            style: TextStyles.poppins(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                  horizontal: 20.r,
                                  vertical: 10.r,
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Constants.starIconColor,
                              ),
                            ),
                            child: Text(
                              'Book Now',
                              style: TextStyles.urbanist(
                                color: Colors.black,
                                fontSize: 14.sp,
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
