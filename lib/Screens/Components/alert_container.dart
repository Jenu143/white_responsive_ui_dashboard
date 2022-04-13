import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/strings.dart';
import 'package:flutter/material.dart';

class AlertContainer extends StatefulWidget {
  const AlertContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<AlertContainer> createState() => _AlertContainerState();
}

class _AlertContainerState extends State<AlertContainer> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return visible
        ? Container(
            decoration: BoxDecoration(
                color: alertContainerColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                border:
                    Border.all(color: alertContainerColor.withOpacity(0.1))),
            padding: const EdgeInsets.only(
              left: defaultPad,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: defaultPad,
              vertical: defaultPad / 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPad / 2,
                        vertical: defaultPad * 0.08,
                      ),
                      decoration: BoxDecoration(
                        color: alertContainerColor.shade700,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        success,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(width: defaultPad / 2),
                    if (!Responsive.isMobile(context))
                      Text(
                        des,
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: alertContainerColor.shade900,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                  ],
                ),
                Visibility(
                  visible: visible,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        visible = false;
                      });

                      print(visible);
                    },
                    icon: Icon(
                      Icons.close,
                      color: alertContainerColor.shade800,
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        : Container();
  }
}
