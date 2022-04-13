import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  ChatApp({Key? key}) : super(key: key);

  var br = BorderRadius.circular(0);
  double width = 10;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.11,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: BarChart(
          BarChartData(
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
            barTouchData: BarTouchData(enabled: false),
            titlesData: FlTitlesData(show: false),
            barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                  toY: 15,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 16,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 14,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 9,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 6,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 5,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 3,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                  toY: 7,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(
                  toY: 10,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(
                  toY: 5,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(
                  toY: 18,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 7, barRods: [
                BarChartRodData(
                  toY: 19,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                  toY: 21,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                  toY: 8,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                  toY: 15,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                  toY: 5,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                  toY: 21,
                  width: width,
                  color: secoundWhiteColor,
                  borderRadius: br,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
