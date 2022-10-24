import 'package:flutter/material.dart';
import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/utils/constants.dart';

class FavouritePlace extends StatefulWidget {
  const FavouritePlace({
    Key? key,
    required this.place,
  }) : super(key: key);
  final Place place;

  @override
  State<FavouritePlace> createState() => _FavouritePlaceState();
}

class _FavouritePlaceState extends State<FavouritePlace> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: GestureDetector(
          onTap: () {
            widget.place.copyWith(isFavourite: !widget.place.isFavourite);
            setState(() {});
          },
          child: Image.asset(
            IconsAssets.heartRed,
            color: widget.place.isFavourite ? null : Colors.black,
          ),
        ),
      ),
    );
  }
}
