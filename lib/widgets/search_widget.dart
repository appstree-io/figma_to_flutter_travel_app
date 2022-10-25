import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vacation_time/utils/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 24.r, top: 30.r, bottom: 30.r),
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Constants.borderColor),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
