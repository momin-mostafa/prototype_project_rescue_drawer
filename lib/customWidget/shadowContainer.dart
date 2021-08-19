import 'package:flutter/material.dart';
import 'package:prototype_project_rescue_drawer/color/uiColor.dart';

class ShadowContainer extends StatefulWidget {
  const ShadowContainer({Key? key}) : super(key: key);

  @override
  _ShadowContainerState createState() => _ShadowContainerState();
}

class _ShadowContainerState extends State<ShadowContainer> {
  double xOffset = 220;
  double yOffset = 170;
  double scaleFator = 0.56;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFator),
      // duration: Duration(microseconds: 0),
      decoration: BoxDecoration(
        color: UIColor.shadowContainerColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: UIColor.shadowOfShadowCont,
            spreadRadius: 10,
            blurRadius: 7,
          ),
        ],
      ),
    );
  }
}
