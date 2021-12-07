import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Side%20Bar/button_widget.dart';

import 'navigation_drawer_widget.dart';





class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    // endDrawer: NavigationDrawerWidget(),

    body: Builder(
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ButtonWidget(
          icon: Icons.open_in_new,
          text: 'Open Drawer',
          onClicked: () {
            Scaffold.of(context).openDrawer();
            // Scaffold.of(context).openEndDrawer();
          },
        ),
      ),
    ),
  );
}
