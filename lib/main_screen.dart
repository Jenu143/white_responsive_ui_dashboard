import 'package:dashbord_ui_2/Responsive/responsive.dart';
import 'package:dashbord_ui_2/Screens/Components/menu/menu_screen.dart';
import 'package:dashbord_ui_2/Screens/Dashboard/dashboard.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        key: _globalKey,
        drawer: const SideMenu(),
        backgroundColor: scaffoldColor,
        body: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(keys: _globalKey),
            ),
          ],
        ),
      ),
    );
  }
}
