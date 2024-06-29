import 'package:fitness_tracker/utills/colors.dart';
import 'package:fitness_tracker/widgets/circle_button.dart';
import 'package:fitness_tracker/widgets/custom_health_item.dart';
import 'package:fitness_tracker/widgets/custom_time_tracker.dart';
import 'package:fitness_tracker/widgets/custom_tracker_chart.dart';
import 'package:fitness_tracker/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FitnessTracker extends StatelessWidget {
  const FitnessTracker({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Corrected the MediaQuery usage
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CircleButton(icon: Ionicons.arrow_back),
        actions: const [
          CircleButton(icon: Ionicons.notifications),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingOne(text: 'Health'),
            headingOne(text: 'Overview', textColor: AppColors.primaryColor),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHealthItem(title: 'Calories', subtitle: '1360 kCal'),
                  CustomHealthItem(title: 'Protein', subtitle: '30 Gram'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHealthItem(title: 'Sleep', subtitle: '3 Hours'),
                  CustomHealthItem(title: 'Weight', subtitle: '67 KG'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleButton(
                      icon: Icons.heart_broken,
                      backgroundColor: Colors.black.withOpacity(.1),
                      iconColor: Colors.black,
                    ),
                    contentPadding: EdgeInsets.zero,
                    title: headingTwo(text: '851 ms', textColor: Colors.black),
                    subtitle: bodyLarge(
                        text: 'R-R interval',
                        textColor: Colors.black.withOpacity(.5)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: CustomTimeTracker(
                          time: "830 ms",
                          isFilled: true,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomTimeTracker(time: "850 ms"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomTimeTracker(time: "810 ms"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTwo(text: 'Blood Pressure'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTrackerChart()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
