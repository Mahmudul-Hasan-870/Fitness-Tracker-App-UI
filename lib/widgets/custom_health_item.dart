import 'package:flutter/material.dart';

import '../utills/colors.dart';
import 'heading_text.dart';

class CustomHealthItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomHealthItem(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            headingTwo(text: title),
            bodyLarge(text: subtitle, textColor: Colors.white.withOpacity(.5))
          ],
        )
      ],
    );
  }
}
