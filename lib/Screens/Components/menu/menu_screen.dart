import 'package:dashbord_ui_2/Screens/Components/menu/menu_heading.dart';
import 'package:dashbord_ui_2/Screens/Components/menu/menu_single_item_row.dart';
import 'package:dashbord_ui_2/constant/colors_and_other.dart';
import 'package:dashbord_ui_2/constant/strings.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: menuColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: defaultPad),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    menuSufee,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: secoundWhiteColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  const SizedBox(width: defaultPad * 0.5),
                  Text(
                    menuAdmin,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: whiteColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: secoundWhiteColor,
              thickness: 0.5,
              height: 10,
            ),
            const MenuSingleItemRow(
              name: menuDashboard,
              icons: Icons.home,
              iconColor: whiteColor,
              arrowForwardColor: Colors.transparent,
            ),

            //& ui elements
            const MenuHeading(heding: menuUiElements),
            const MenuSingleItemRow(
              icons: Icons.laptop,
              name: menuUiComponents,
            ),
            const MenuSingleItemRow(
              icons: Icons.table_chart_outlined,
              name: menuUiTables,
            ),
            const MenuSingleItemRow(
              icons: Icons.line_weight_sharp,
              name: menuUiForms,
            ),

            //& icons
            const MenuHeading(heding: menuIcons),
            const MenuSingleItemRow(
              icons: Icons.insert_emoticon,
              name: menuIconsIcons,
            ),
            const MenuSingleItemRow(
              icons: Icons.widgets,
              name: menuIconsWidgets,
            ),
            const MenuSingleItemRow(
              icons: Icons.area_chart_sharp,
              name: menuIconsCharts,
            ),
            const MenuSingleItemRow(
              icons: Icons.map,
              name: menuIconsMaps,
            ),

            //& extras
            const MenuHeading(heding: menuExtras),
            const MenuSingleItemRow(
              icons: Icons.pages_outlined,
              name: menuExtrasPages,
            ),
          ],
        ),
      ),
    );
  }
}
