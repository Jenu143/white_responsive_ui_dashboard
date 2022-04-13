import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class SocialMediaContaierCard extends StatelessWidget {
  const SocialMediaContaierCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double defaulrHeight = 0.09;

    return Column(
      children: [
        Container(
          height: size.height * 0.09,
          color: data["colors"],
          child: Stack(
            children: [
              Positioned(
                height: size.height * defaulrHeight,
                top: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: Image.asset(
                    data["image"],
                    fit: BoxFit.cover,
                    width: data["width"],
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop(context)
                ? defaultPad * 1.4
                : defaultPad / 2.0,
            vertical: defaultPad * 0.1,
          ),
          color: whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                data["des1"],
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "|",
                style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 24, color: Colors.grey.withOpacity(0.4)),
              ),
              Text(
                data["des2"],
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
