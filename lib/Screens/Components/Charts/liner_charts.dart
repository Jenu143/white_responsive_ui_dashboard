import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:line_chart/charts/line-chart.widget.dart';
import 'package:line_chart/model/line-chart.model.dart';

class LinerCharts extends StatelessWidget {
  const LinerCharts(
      {Key? key,
      required this.amount1,
      required this.amount2,
      required this.amount3,
      required this.amount4,
      required this.amount5,
      required this.amount6,
      required this.amount7,
      required this.amount8,
      required this.colors})
      : super(key: key);

  final double amount1,
      amount2,
      amount3,
      amount4,
      amount5,
      amount6,
      amount7,
      amount8;

  final Color colors;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 20),
        LineChart(
          width: size.width < 450
              ? size.width * 0.99
              :
           size.width < 800
              ? size.width * 0.5
              : size.width < 1100
              ? size.width * 0.23
              : size.width < 1650
                  ? size.width * 0.2
                  : size.width * 0.21,
          height: MediaQuery.of(context).size.height * 0.08,
          data: [
            LineChartModel(amount: amount1),
            LineChartModel(amount: amount2),
            LineChartModel(amount: amount3),
            LineChartModel(amount: amount4),
            LineChartModel(amount: amount5),
            LineChartModel(amount: amount6),
            LineChartModel(amount: amount7),
            LineChartModel(amount: amount8),
          ],
          linePaint: Paint()
            ..strokeWidth = 3
            ..style = PaintingStyle.stroke
            ..color = Colors.black,
          circlePaint: Paint()..color = Colors.white,
          showPointer: true,
          showCircles: true,
          customDraw: (Canvas canvas, Size size) {},
          circleRadiusValue: 4.5,
          insideCirclePaint: Paint()..color = colors,
          onValuePointer: (value) {
            print('onValuePointer');
          },
          onDropPointer: () {
            print('onDropPointer');
          },
        ),
      ],
    );
    ;
  }
}
