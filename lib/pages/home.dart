// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vacation_time/models/place.dart';
import 'package:vacation_time/widgets/categories.dart';
import 'package:vacation_time/widgets/header.dart';
import 'package:vacation_time/widgets/popular_packages.dart';
import 'package:vacation_time/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void favouriteStatus(Place place) {
  //   places = places.map<Place>((element) {
  //     if (element == place) {
  //       return element.copyWith(isFavourite: !element.isFavourite);
  //     }
  //     return element;
  //   }).toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              85.verticalSpace,
              const Header(),
              const SearchWidget(),
              const Categories(),
              const PopularPackage(),
            ],
          ),
        ),
      ),
    );
  }
}
