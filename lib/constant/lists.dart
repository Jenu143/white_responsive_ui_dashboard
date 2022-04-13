import 'package:dashbord_ui_2/Screens/Components/Charts/bar_charts.dart';
import 'package:dashbord_ui_2/Screens/Components/Charts/curve_liner_chart2.dart';
import 'package:dashbord_ui_2/Screens/Components/Charts/liner_charts.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/strings.dart';
import 'package:flutter/cupertino.dart';

//~ dash board chart container colors and properties
List<Map<String, dynamic>> dashboardChatList = <Map<String, dynamic>>[
  <String, dynamic>{
    "colors": chatContainerColor1,
    "numbers": 10468,
  },
  <String, dynamic>{
    "colors": chatContainerColor2,
    "numbers": 11548,
  },
  <String, dynamic>{
    "colors": chatContainerColor3,
    "numbers": 54875,
  },
  <String, dynamic>{
    "colors": chatContainerColor4,
    "numbers": 36963,
  },
];

//~ charts
List<Widget> listCharts = [
  const LinerCharts(
    amount1: 5,
    amount2: 4,
    amount3: 4,
    amount4: 7,
    amount5: 7,
    amount6: 3,
    amount7: 3,
    amount8: 2,
    colors: chatContainerColor1,
  ),
  const LinerCharts(
    amount1: 5,
    amount2: 4,
    amount3: 6,
    amount4: 5,
    amount5: 7,
    amount6: 3,
    amount7: 8,
    amount8: 2,
    colors: chatContainerColor2,
  ),
  const LineChartSample2(),
  ChatApp(),
];

//~ social media lists
List<Map<String, dynamic>> socialMediaList = <Map<String, dynamic>>[
  {
    "image": facebookImage,
    "des1": facebookDes1,
    "des2": facebookDes2,
    "colors": facebookColor,
    "width": 20.0
  },
  {
    "image": twitterImage,
    "des1": twitterDes1,
    "des2": twitterDes2,
    "colors": twitterColor,
    "width": 25.0
  },
  {
    "image": linkedInImage,
    "des1": linkedInDes1,
    "des2": linkedInDes2,
    "colors": linkedInColor,
    "width": 30.0
  },
  {
    "image": googleImage,
    "des1": googleDes1,
    "des2": googleDes2,
    "colors": googleColor,
    "width": 33.0
  }
];
