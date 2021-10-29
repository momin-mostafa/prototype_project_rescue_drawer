import 'package:flutter/material.dart';
import 'color/uiColor.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: UIColor.drawerScreenColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // CircleAvatar(
                  //   backgroundColor: UIColor.circleAvatarColor,
                  //   child: Text('TM'),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 20),
                  // ),
                  Text(
                    "Expense App",
                    style: TextStyle(
                      fontSize: 17,
                      color: UIColor.drawerScreenText,
                      fontFamily: 'WindSong',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.date_range_rounded,
                    color: UIColor.drawerScreenText,
                  ),
                  onTap: () {
                    print("taped");
                  },
                  title: Text(
                    "Monthly expense",
                    style: TextStyle(color: UIColor.drawerScreenText),
                  ),
                ),
                ListTile(
                  enabled: false,
                  leading: Icon(
                    Icons.today_rounded,
                    color: UIColor.drawerScreenText,
                  ),
                  onTap: null,
                  title: Text(
                    "weekly expense",
                    style: TextStyle(color: UIColor.drawerScreenText),
                  ),
                ),
                ListTile(
                  enabled: false,
                  leading: Icon(
                    Icons.category_rounded,
                    color: UIColor.drawerScreenText,
                  ),
                  onTap: null,
                  title: Text(
                    "sort by catagories",
                    style: TextStyle(color: UIColor.drawerScreenText),
                  ),
                ),
                ListTile(
                  enabled: false,
                  leading: Icon(
                    Icons.attach_money_rounded,
                    color: UIColor.drawerScreenText,
                  ),
                  onTap: null,
                  title: Text(
                    "Saving",
                    style: TextStyle(color: UIColor.drawerScreenText),
                  ),
                ),
              ],
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("taped Contact");
                    },
                    child: Text("Contact"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        UIColor.drawerBottomButtonBackground,
                      ),
                      elevation: MaterialStateProperty.all(
                        14,
                      ),
                      shadowColor: MaterialStateProperty.all(
                        UIColor.drawerBottomButtonColor,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("about us Tapped");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        UIColor.drawerBottomButtonBackground,
                      ),
                      elevation: MaterialStateProperty.all(
                        14,
                      ),
                      shadowColor: MaterialStateProperty.all(
                        UIColor.drawerBottomButtonColor,
                      ),
                    ),
                    child: Text("About us"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
