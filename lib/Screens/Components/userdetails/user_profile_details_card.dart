import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/strings.dart';
import 'package:flutter/material.dart';

class UserProfileDetailCard extends StatelessWidget {
  const UserProfileDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width < 1100
          ? size.height * 0.315
          : size.width < 1300
              ? size.height * 0.447
              : size.height * 0.315,
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPad * 1.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //& profit
            UserProfileDetailSingleCard(
              name: userTotalProfit,
              numbers: userTotalProfitNum,
              imageIcon: userTotalProfitImage,
              colors: greenColor.shade800,
            ),

            //& customer
            UserProfileDetailSingleCard(
              name: userNewCustomer,
              numbers: userNewCustomerNum,
              imageIcon: userNewCustomerImage,
              colors: blueColor.shade800,
            ),

            //& projects
            UserProfileDetailSingleCard(
              name: userActiveProjects,
              numbers: userActiveProjectsNum,
              imageIcon: userActiveProjectsImage,
              colors: yellowColor.shade700,
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfileDetailSingleCard extends StatelessWidget {
  const UserProfileDetailSingleCard({
    Key? key,
    required this.name,
    required this.numbers,
    required this.imageIcon,
    required this.colors,
  }) : super(key: key);

  final String name;
  final String numbers;
  final String imageIcon;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width < 1100
          ? double.infinity
          : size.width < 1300
              ? 200
              : double.infinity,
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPad, vertical: defaultPad / 2),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: greyColor.withOpacity(0.4),
        ),
      ),
      child: size.width < 1100
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                images(),
                desText(context),
              ],
            )
          : size.width < 1300
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    images(),
                    SizedBox(height: defaultPad / 4),
                    desText(context),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    images(),
                    desText(context),
                  ],
                ),
    );
  }

  Padding desText(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: defaultPad * 1.2),
      child: Column(
        crossAxisAlignment: size.width < 1100
            ? CrossAxisAlignment.start
            : size.width < 1300
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
        children: [
          Text(
            name, //name
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: greyColor.shade600,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            numbers, //numbers
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }

  Container images() {
    return Container(
      padding: const EdgeInsets.all(defaultPad / 1.2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 3,
          color: colors,
        ),
      ),
      child: Image.asset(
        imageIcon, //image
        width: 28,
        color: colors,
      ),
    );
  }
}
