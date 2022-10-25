// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:vacation_time/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(390, 844),
      builder: (context, child) => ProviderScope(
        child: MaterialApp(
            title: 'Vacation Time',
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),

              // primarySwatch: Colors.blue,
            ),
            home: child),
      ),
      child: const HomePage(),
    );
  }
}
