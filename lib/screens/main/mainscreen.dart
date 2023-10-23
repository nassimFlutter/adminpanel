import 'package:adminpanel/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

import '../dashbord/dashbord_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              //* dafult flex = 1
              //* take 1/6 from the screen
              child: SideMenu()),
          Expanded(
            flex: 5,
            child: DaxhboradScreen(),
          )
        ],
      )),
    );
  }
}
