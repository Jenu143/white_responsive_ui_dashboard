import 'package:dashbord_ui_2/Screens/Components/chart%20and%20social%20media%20card/chart_container_card.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/lists.dart';
import 'package:flutter/material.dart';

class ChartContainerRow extends StatelessWidget {
  const ChartContainerRow({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPad),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPad,
          mainAxisSpacing: defaultPad,
        ),
        scrollDirection: Axis.vertical,
        itemCount: dashboardChatList.length,
        itemBuilder: (context, index) {
          return ChartContainerCard(
            data: dashboardChatList[index],
            chartList: listCharts[index],
          );
        },
      ),
    );
  }
}
