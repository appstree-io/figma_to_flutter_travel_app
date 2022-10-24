import 'package:flutter/material.dart';
import 'package:vacation_time/widgets/categories.dart';
import 'package:vacation_time/widgets/header.dart';
import 'package:vacation_time/widgets/popular_packages.dart';
import 'package:vacation_time/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SizedBox(height: 85),
              Header(),
              SearchWidget(),
              Categories(),
              PopularPackage()
            ],
          ),
        ),
      ),
    );
  }
}
