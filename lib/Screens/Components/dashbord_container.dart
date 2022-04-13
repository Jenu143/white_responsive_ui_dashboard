import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/strings.dart';
import 'package:flutter/material.dart';

class DashboardHeading extends StatelessWidget {
  const DashboardHeading({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Container(
            padding: const EdgeInsets.only(
              left: defaultPad / 4,
              right: defaultPad / 4,
            ),
            margin: const EdgeInsets.only(
              left: defaultPad,
              top: defaultPad / 2,
              bottom: defaultPad / 2,
              right: defaultPad / 2,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: menuColor,
              ),
            ),
          ),
        Expanded(
          child: Container(
            color: whiteColor,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPad * 2,
              vertical: defaultPad / 2,
            ),
            margin: const EdgeInsets.symmetric(vertical: defaultPad / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  menuDashboard,
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                Text(
                  menuDashboard,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
