import 'package:flutter/material.dart';
import 'package:vacation_time/utils/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 24, top: 30, bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
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
