import 'package:flutter/material.dart';
import 'customWidget/shadowContainer.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            ShadowContainer(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
//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