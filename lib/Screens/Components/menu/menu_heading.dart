//* menu headings
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class MenuHeading extends StatelessWidget {
  const MenuHeading({
    Key? key,
    required this.heding,
  }) : super(key: key);

  final String heding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultPad * 2,
        left: defaultPad,
        right: defaultPad,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heding,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: secoundWhiteColor,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                  fontSize: 13,
                ),
          ),
          const SizedBox(height: defaultPad / 4),
          const Divider(
            color: secoundWhiteColor,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
