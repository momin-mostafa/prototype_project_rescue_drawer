import 'package:flutter/material.dart';
import '../Widgets/customCard.dart';
import '../Widgets/list_of_product.dart';
import '../Widgets/newproduct.dart';
import '../utils/uiColor.dart';
import '../utils/globals.dart' as globals;
import '../utils/listing.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFator = 1;

  final List<Listing> _userProducts = [];

  void _addNewProduct(String txTitle, double txAmount) {
    final newPrd = Listing(
      productname: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userProducts.add(newPrd);
    });
  }

  void _startAddNewProduct(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewProduct(_addNewProduct),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFator),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
          color: UIColor.homeScreenColor,
          borderRadius: BorderRadius.circular(globals.isDrawerOpen ? 25 : 0.0),
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              color: UIColor.animatedContainerColor,
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
            ProductList(_userProducts),
            IconButton(
              alignment: Alignment.bottomCenter,
              onPressed: () => _startAddNewProduct(context),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
