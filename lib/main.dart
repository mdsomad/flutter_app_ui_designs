import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/Screen/BodyView.dart';
import 'package:flutter_app_ui_designs/Screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Ui Designs',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.black,
          indicatorColor: Color(0xCAF15800),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          labelTextStyle: MaterialStateProperty.resolveWith(
              (states) => states.contains(MaterialState.selected)
                  ? TextStyle(
                      color: Color(0xCAF15800),
                    )
                  : TextStyle()),
        )),

        home: BodyView());
  }
}
