import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/strings.dart';
import 'package:flutter/material.dart';

class UserSocialDetailCard extends StatelessWidget {
  const UserSocialDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: twitterColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5),
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPad,
                  ),
                  child: Image.asset(
                    userBgImage,
                    color: secoundWhiteColor.withOpacity(0.2),
                    width: 100,
                  ),
                ),
              ),
              Positioned(
                top: defaultPad * 2.25,
                left: defaultPad,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(userImage),
                        ),
                        const SizedBox(width: defaultPad * 1.5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  ),
                            ),
                            Text(
                              userDes,
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
                                        color: whiteColor,
                                        letterSpacing: 0.3,
                                      ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //& social following and followers
        Container(
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(5),
            ),
          ),
          padding: const EdgeInsets.only(
            left: defaultPad / 1.5,
            right: defaultPad / 1.5,
            bottom: defaultPad / 2,
            top: defaultPad,
          ),
          child: Column(
            children: [
              size.width < 1100
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        tweets(context),

                        //& vertical divider
                        verticalDivider(context),
                        following(context),

                        //& vertical divider
                        verticalDivider(context),
                        followers(context),
                      ],
                    )
                  : size.width < 1300
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //* tweets
                            tweets(context),

                            //& vertical divider

                            size.width < 1300
                                ? horizontalDivider(context)
                                : verticalDivider(context),

                            //* followings
                            following(context),

                            //& vertical divider
                            size.width < 1300
                                ? horizontalDivider(context)
                                : verticalDivider(context),

                            //* followers
                            followers(context),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            tweets(context),

                            //& vertical divider
                            verticalDivider(context),
                            following(context),

                            //& vertical divider
                            verticalDivider(context),
                            followers(context),
                          ],
                        ),

              //& text Field
              Padding(
                padding: const EdgeInsets.only(
                  bottom: defaultPad,
                  top: defaultPad * 1.5,
                ),
                child: SizedBox(
                  height: defaultPad * 2,
                  child: TextField(
                    cursorColor: blackColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: defaultPad / 3,
                      ),
                      hintText: userSocialDes,
                      hintStyle: TextStyle(
                          color: greyColor.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: blackColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //& adress row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: greyColor.withOpacity(0.6),
                        size: 18,
                      ),
                      Icon(
                        Icons.location_on,
                        color: greyColor.withOpacity(0.6),
                        size: 18,
                      ),
                      countryNameStyle(context, userCityName),
                      countryNameStyle(context, userCountryName),
                    ],
                  ),
                  countryNameStyle(context, userNumbers),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

//& followers
  Column followers(BuildContext context) {
    return Column(
      children: [
        userSocialFollowerNumbers(context, userFollowersNum),
        userSocialFollowNames(context, userFollowers),
      ],
    );
  }

//& followings
  Column following(BuildContext context) {
    return Column(
      children: [
        userSocialFollowerNumbers(context, userFollowingNum),
        userSocialFollowNames(context, userFollowing),
      ],
    );
  }

//& vertical divider
  SizedBox verticalDivider(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.045,
      child: VerticalDivider(
        color: greyColor.withOpacity(0.6),
        indent: 5,
        width: MediaQuery.of(context).size.height * 0.02,
      ),
    );
  }

//& horizontal divider
  SizedBox horizontalDivider(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.07,
      child: Divider(
        color: greyColor.withOpacity(0.6),
        indent: 5,
      ),
    );
  }

//& tweets
  Column tweets(BuildContext context) {
    return Column(
      children: [
        userSocialFollowerNumbers(context, userTweetsNum),
        userSocialFollowNames(context, userTweets),
      ],
    );
  }

  Text countryNameStyle(BuildContext context, String names) {
    return Text(
      names,
      style: Theme.of(context).textTheme.caption!.copyWith(
            color: greyColor.withOpacity(0.9),
            fontSize: 16,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Text userSocialFollowNames(BuildContext context, String names) {
    return Text(
      names,
      style: Theme.of(context).textTheme.caption!.copyWith(
            color: greyColor.withOpacity(0.9),
            fontWeight: FontWeight.bold,
            letterSpacing: 0.4,
          ),
    );
  }

  Text userSocialFollowerNumbers(BuildContext context, String num) {
    return Text(
      num,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            color: greyColor.withOpacity(
              0.9,
            ),
          ),
    );
  }
}
