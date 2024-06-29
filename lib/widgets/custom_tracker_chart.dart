import 'package:fitness_tracker/utills/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomTrackerChart extends StatelessWidget {
  const CustomTrackerChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> summery = [
      {'value': '57.0', 'index': '0'},
      {'value': '41.0', 'index': '1'},
      {'value': '56.0', 'index': '2'},
      {'value': '83.0', 'index': '3'},
      {'value': '44.0', 'index': '4'},
      {'value': '65.0', 'index': '5'},
      {'value': '97.0', 'index': '6'},
    ];

    List<String> daysOfWeek = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

    return SizedBox(
      height: 150, // Set a fixed height to the parent container
      child: BarChart(
        BarChartData(
          maxY: 100,
          minY: 0,
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  String day = '';
                  if (value.toInt() > 0 && value.toInt() <= daysOfWeek.length) {
                    day = daysOfWeek[value.toInt() - 1];
                  }
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      day,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withOpacity(.2),
                      ),
                    ),
                  );
                },
                reservedSize: 30,
              ),
            ),
          ),
          barGroups: summery.map((element) {
            return BarChartGroupData(
              x: int.parse(element['index']) + 1,
              barRods: [
                BarChartRodData(
                  toY: double.parse(element['value']),
                  color: AppColors.primaryColor,
                  width: 30,
                  borderRadius: BorderRadius.circular(8),
                  backDrawRodData: BackgroundBarChartRodData(
                    color: AppColors.secondaryColor,
                    show: true,
                    toY: 100,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
