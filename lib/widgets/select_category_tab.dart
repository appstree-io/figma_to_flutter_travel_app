import 'package:flutter/material.dart';

class SelectCategoryTab extends StatelessWidget {
  const SelectCategoryTab({
    Key? key,
    required this.color,
    required this.text,
    required this.emoji,
  }) : super(key: key);
  final Color color;
  final String text;
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(08)),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: emoji,
              style: const TextStyle(fontSize: 22),
            ),
            TextSpan(
              text: text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
