import 'package:flutter/material.dart';
import 'color/uiColor.dart';
import 'customWidget/customCard.dart';
import 'globals.dart' as globals;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFator = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFator),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: UIColor.homeScreenColor,
        borderRadius: BorderRadius.circular(globals.isDrawerOpen ? 25 : 0.1),
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            color: colorChanger(UIColor.animatedContainerColor,
                UIColor.homeScreenColor, globals.isDrawerOpen),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              globals.isDrawerOpen
                  ? Card(
                      shadowColor: UIColor.iconCardShadowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: UIColor.iconCardColor,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFator = 1;
                            globals.isDrawerOpen = false;
                          });
                        },
                        icon: Icon(
                          Icons.keyboard_backspace_rounded,
                          color: UIColor.iconMenuColor,
                        ),
                      ),
                    )
                  : Card(
                      shadowColor: UIColor.iconCardShadowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFator = 0.6;
                            globals.isDrawerOpen = true;
                          });
                        },
                        icon: Icon(
                          Icons.menu,
                          color: UIColor.iconMenuColor,
                        ),
                      ),
                    ),
              Icon(
                Icons.home,
                color: UIColor.iconMenuColor,
              ),
              Card(
                shadowColor: UIColor.iconCardShadowColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.exit_to_app,
                    color: UIColor.iconMenuColor,
                  ),
                ),
              ),
            ],
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              child: Text(
                "CHART",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          //add customCard then import uiColor in customCard
          CustomCard(cost: 89, date: DateTime.now(), title: "shoes"),
          CustomCard(cost: 90, date: DateTime.now(), title: "books"),
          CustomCard(cost: 34, date: DateTime.now(), title: "food"),
          //CustomInputCard(), you will implement it here.
        ],
      ),
    );
  }
}
