import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class ChartContainerCard extends StatelessWidget {
  const ChartContainerCard({
    Key? key,
    required this.data,
    required this.chartList,
  }) : super(key: key);

  final Map<String, dynamic> data;

  final Widget chartList;

  @override
  Widget build(BuildContext context) {
    return Container(
      //^
      color: data["colors"],
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["numbers"].toString(),
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                    Text("Members online",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5)),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      size: 14,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      size: 18,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            left: 5,
            right: 5,
            child: chartList,
          )
        ],
      ),
    );
  }
}
