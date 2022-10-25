import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacation_time/utils/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Constants.sizeW24,
            CircleAvatar(
              maxRadius: 16.r,
              backgroundColor: Colors.grey,
            ),
            Constants.sizeW10,
            Text(
              'Hello, Vineetha',
              style: GoogleFonts.inter(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Image.asset(IconsAssets.lamp),
            // Constants.sizeW24,
            24.horizontalSpace
          ],
        ),
        // const SizedBox(
        //   height: 35,
        // ),
        25.verticalSpace,
        Text(
          'Where do you \nwant to explore today?',
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
