import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:dashbord_ui_2/Screens/Components/userdetails/user_profile_details_card.dart';
import 'package:dashbord_ui_2/Screens/Components/userdetails/user_social_detail_card.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    Key? key,
    this.aspectRatio1,
    this.aspectRatio2,
  }) : super(key: key);

  final double? aspectRatio1;
  final double? aspectRatio2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPad * 1.5),
      child: Column(
        children: [
          if (size.width > 550)
            Row(
              children: const [
                Expanded(
                  child: UserSocialDetailCard(),
                ),
                Expanded(
                  child: UserProfileDetailCard(),
                ),
              ],
            ),
          if (size.width < 550)
            Column(
              children: [
                AspectRatio(
                  aspectRatio: aspectRatio1!,
                  child: const UserSocialDetailCard(),
                ),
                const SizedBox(height: defaultPad),
                AspectRatio(
                  aspectRatio: aspectRatio2!,
                  child: const UserProfileDetailCard(),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
