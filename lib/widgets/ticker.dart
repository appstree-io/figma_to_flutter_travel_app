import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vacation_time/utils/constants.dart';
import 'package:vacation_time/utils/text_styles.dart';

class Ticker extends StatelessWidget {
  const Ticker({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        TextButton(
          child: Text(
            'See all',
            style: TextStyles.inter(
              color: Constants.lightGreyColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {},
        ),
        // Constants.sizeW18
        24.horizontalSpace,
      ],
    );
  }
}
