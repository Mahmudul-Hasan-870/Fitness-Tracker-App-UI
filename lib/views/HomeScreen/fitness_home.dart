import 'package:fitness_tracker/utills/colors.dart';
import 'package:fitness_tracker/views/FitnessTracker/fitness_tracker.dart';
import 'package:fitness_tracker/widgets/circle_button.dart';
import 'package:fitness_tracker/widgets/custom_item.dart';
import 'package:fitness_tracker/widgets/custom_item_card.dart';
import 'package:fitness_tracker/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FitnessHome extends StatelessWidget {
  const FitnessHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Corrected the MediaQuery usage
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CircleButton(icon: Ionicons.menu),
        actions: const [
          CircleButton(icon: Ionicons.notifications),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingOne(text: 'Make Your'),
            headingOne(text: 'Body Perfect', textColor: AppColors.primaryColor),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingTwo(
                          text: 'Full Body\nExercise X3',
                          textColor: Colors.black,
                        ),
                        const CustomItem(
                          icon: Ionicons.flame_outline,
                          text: '1230 kCal',
                        ),
                        const CustomItem(
                          icon: Ionicons.time_outline,
                          text: '50 min',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB9CF30),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FitnessTracker()));
                          },
                          child: const Text(
                            'Start Now',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -30,
                    bottom: -25,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'assets/images/man.png',
                      height: 300,
                      width: 300,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              children: [
                Expanded(
                    child: CustomItemCard(
                        title: 'Running\nDistance',
                        icon: Ionicons.walk,
                        value: '1.8 Km')),
                SizedBox(width: 10),
                Expanded(
                    child: CustomItemCard(
                  title: 'Total\nCycling',
                  icon: Ionicons.bicycle,
                  value: '1.8 Km',
                  isDark: true,
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 15),
                title: headingTwo(text: 'Appointment'),
                subtitle: bodyLarge(
                  text: 'For a exercise practice',
                  textColor: Colors.white.withOpacity(.5),
                ),
                trailing: const CircleButton(
                  icon: Ionicons.call,
                  backgroundColor: AppColors.primaryColor,
                  iconColor: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
