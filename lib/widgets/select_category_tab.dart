import 'package:flutter/material.dart';
import 'package:vacation_time/utils/text_styles.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 02),
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(08)),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: emoji,
              style: const TextStyle(fontSize: 40),
            ),
            WidgetSpan(
              child: Text(
                text,
                style: TextStyles.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              alignment: PlaceholderAlignment.top,
              // text: text,
            ),
          ],
        ),
      ),
    );
  }
}
