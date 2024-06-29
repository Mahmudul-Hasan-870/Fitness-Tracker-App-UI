import 'package:flutter/material.dart';

import '../utills/colors.dart';
import 'circle_button.dart';
import 'heading_text.dart';

class CustomItemCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final bool? isDark;

  const CustomItemCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color:
            isDark == true ? AppColors.secondaryColor : AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CircleButton(
              icon: icon,
              backgroundColor: isDark == true
                  ? Colors.white.withOpacity(.1)
                  : Colors.black.withOpacity(.1),
              iconColor: isDark == true ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          bodyLarge(
              text: title,
              textColor: isDark == true ? Colors.white : Colors.black),
          const SizedBox(height: 5),
          headingTwo(
              text: value,
              textColor: isDark == true ? Colors.white : Colors.black,),
        ],
      ),
    );
  }
}
