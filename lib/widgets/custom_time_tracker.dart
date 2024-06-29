import 'package:flutter/material.dart';

import 'heading_text.dart';

class CustomTimeTracker extends StatelessWidget {
  final bool? isFilled;
  final String time;

  const CustomTimeTracker({super.key, this.isFilled, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 8,
          decoration: BoxDecoration(
            color:
                isFilled == true ? Colors.black : Colors.black.withOpacity(.2),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        bodyLarge(text: time, textColor: Colors.black)
      ],
    );
  }
}
