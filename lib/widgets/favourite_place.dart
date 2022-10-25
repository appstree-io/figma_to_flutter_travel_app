import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/state/destination_state.dart';
import 'package:vacation_time/utils/constants.dart';

class FavouritePlace extends ConsumerWidget {
  const FavouritePlace({
    Key? key,
    required this.place,
  }) : super(key: key);
  final Place place;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notfier = ref.watch(destinationProvider.notifier);
    return Positioned(
      top: 10.sm,
      right: 10.sm,
      child: GestureDetector(
        onTap: () {
          notfier.fav(place);
        },
        child: CircleAvatar(
          radius: 16.r,
          backgroundColor: Colors.white,
          child: Image.asset(
            IconsAssets.heartRed,
            height: 16.sm,
            width: 16.sm,
            color: place.isFavourite ? null : Colors.black,
          ),
        ),
      ),
    );
  }
}
