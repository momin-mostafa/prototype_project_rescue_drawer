import 'package:flutter/material.dart';
import 'package:prototype_project_rescue_drawer/color/uiColor.dart';
import 'customWidget/shadowContainer.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';
import 'globals.dart' as globals;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorChanger(UIColor.animatedContainerColor,
          UIColor.homeScreenColor, globals.isDrawerOpen),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              DrawerScreen(),
              ShadowContainer(),
              HomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
