// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:vacation_time/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacation Time',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const HomePage(),
    );
  }
}
