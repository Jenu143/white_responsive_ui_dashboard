import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:dashbord_ui_2/Screens/Components/Charts/traffic_chart.dart';
import 'package:dashbord_ui_2/Screens/Components/alert_container.dart';
import 'package:dashbord_ui_2/Screens/Components/chart_containers_row.dart';
import 'package:dashbord_ui_2/Screens/Components/social_media_container_row.dart';
import 'package:dashbord_ui_2/Screens/Components/dashbord_container.dart';
import 'package:dashbord_ui_2/Screens/Components/user_details.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
    required this.keys,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> keys;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //^ dashboard container
          DashboardHeading(scaffoldKey: keys),

          //^ Alert container
          const AlertContainer(),
          const SizedBox(height: defaultPad / 2),

          //^ Chart Grid View container
          Responsive(
            mobile: size.width < 450
                ? ChartContainerRow(
                    crossAxisCount: size.width < 450 ? 1 : 4,
                    childAspectRatio: size.width < 450 ? 1.5 : 0.8,
                  )
                : ChartContainerRow(
                    crossAxisCount: size.width < 800 ? 2 : 4,
                    childAspectRatio: size.width < 800 ? 1.2 : 1.1,
                  ),
            tablet: ChartContainerRow(
              childAspectRatio: size.width < 950 ? 1.1 : 1.1,
            ),
            desktop: ChartContainerRow(
              childAspectRatio: size.width < 1400 ? 1.1 : 1.9,
            ),
          ),
          const SizedBox(height: defaultPad),

          //^ Social Media Grid View container
          Responsive(
            mobile: size.width < 383
                ? SocialMediaContainerRow(
                    crossAxisCount: size.width < 383 ? 1 : 4,
                    childAspectRatio: size.width < 383 ? 2.2 : 0.8,
                  )
                : size.width < 450
                    ? SocialMediaContainerRow(
                        crossAxisCount: size.width < 450 ? 1 : 4,
                        childAspectRatio: size.width < 450 ? 2.8 : 0.8,
                      )
                    : size.width < 550
                        ? SocialMediaContainerRow(
                            crossAxisCount: size.width < 550 ? 2 : 4,
                            childAspectRatio: size.width < 550 ? 1.6 : 0.8,
                          )
                        : size.width < 650
                            ? SocialMediaContainerRow(
                                crossAxisCount: size.width < 650 ? 2 : 4,
                                childAspectRatio: size.width < 650 ? 2.0 : 0.8,
                              )
                            : size.width < 730
                                ? SocialMediaContainerRow(
                                    crossAxisCount: size.width < 730 ? 2 : 4,
                                    childAspectRatio:
                                        size.width < 730 ? 2.4 : 0.8,
                                  )
                                : SocialMediaContainerRow(
                                    crossAxisCount: size.width < 800 ? 2 : 4,
                                    childAspectRatio:
                                        size.width < 800 ? 2.7 : 1.4,
                                  ),
            tablet: SocialMediaContainerRow(
              childAspectRatio: size.width < 950 ? 1.1 : 1.1,
            ),
            desktop: SocialMediaContainerRow(
              childAspectRatio: size.width < 1400 ? 1.1 : 1.9,
            ),
          ),
          if (Responsive.isDesktop(context))
            Row(
              children: const [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: TrafficChart(isShowingMainData: true),
                  ),
                ),
                Expanded(
                  child: UserDetail(),
                )
              ],
            ),
          if (!Responsive.isDesktop(context))
            Column(
              children: [
                const AspectRatio(
                  aspectRatio: 2,
                  child: TrafficChart(isShowingMainData: true),
                ),
                const SizedBox(height: defaultPad * 5),
                AspectRatio(
                  aspectRatio: size.width < 400
                      ? 0.6
                      : size.width < 450
                          ? 0.65
                          : size.width < 550
                              ? 0.7
                              : size.width < 650
                                  ? 1.7
                                  : size.width < 750
                                      ? 2
                                      : size.width < 900
                                          ? 2.45
                                          : size.width < 1100
                                              ? 2.9
                                              : 3.5,
                  child: UserDetail(
                    //& aspectRatio1
                    aspectRatio1: size.width < 400
                        ? 1
                        : size.width < 450
                            ? 1.1
                            : size.width < 550
                                ? 1.3
                                : 3,

                    //& aspectRatio2
                    aspectRatio2: size.width < 400
                        ? 1.2
                        : size.width < 450
                            ? 1.4
                            : size.width < 550
                                ? 1.6
                                : 1,
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}

List<ChartData> chartData = <ChartData>[];

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double? y;
}
