//* menu single item
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class MenuSingleItemRow extends StatelessWidget {
  const MenuSingleItemRow({
    Key? key,
    required this.name,
    required this.icons,
    this.iconColor = secoundWhiteColor,
    this.arrowForwardColor = whiteColor,
  }) : super(key: key);

  final String name;
  final IconData icons;
  final Color iconColor;
  final Color arrowForwardColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPad, horizontal: defaultPad),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icons,
                  size: 18,
                  color: iconColor,
                ),
                SizedBox(width: defaultPad),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: whiteColor.withOpacity(0.8),
                        fontSize: 14,
                        letterSpacing: 0.3,
                      ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
              color: arrowForwardColor,
            ),
          ],
        ),
      ),
    );
  }
}
