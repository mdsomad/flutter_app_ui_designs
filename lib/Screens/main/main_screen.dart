// ignore_for_file: unused_local_variable



import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/dashboard_screen.dart';
import 'package:flutter_app_ui_designs/Screens/main/side_menu.dart';
import 'package:flutter_app_ui_designs/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(defaultPadding * 1.5),
        child: Row(
          children: [
            Expanded(flex: 2, child: SideMenu(height: height)),
            Expanded(
                flex: 6,
                child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}


