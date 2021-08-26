import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class UIColor {
  //placeHolder Color Black

  static Color placeHolder = Colors.black;
  //Animated Container Color ----------------
  static Color animatedContainerColor = Colors.white;

  //Drawer Screen Color ---------------------
  static Color drawerScreenColor = HexColor.fromHex('#1E6F5F');
  static Color drawerScreenText = HexColor.fromHex('#CCFFFF');
  static Color circleAvatarColor = HexColor.fromHex('#46a391');
  static Color drawerBottomButtonColor = Colors.teal.shade900;
  static Color drawerBottomButtonBackground = HexColor.fromHex('#46a391');

  // Home Screen Color ----------------------
  static Color homeScreenColor = HexColor.fromHex('#CCFFFF');

  // Custom Card Colors ---------------------
  static Color customCardCost = HexColor.fromHex('#1ABC9C');
  static Color customCard = HexColor.fromHex('#74d3ae');
  static Color customCardCostText = HexColor.fromHex('#EBFFFF');
  static Color customCardDate = HexColor.fromHex('#f6e7cb');
  static Color customCardShadowColor = HexColor.fromHex('#f9fbe7');
  static Color customCardTitleColor = HexColor.fromHex('#EBFFFF');

  //Shadow Container Colors -----------------
  static Color shadowContainerColor = HexColor.fromHex('#004d40');
  static Color shadowOfShadowCont = HexColor.fromHex('#004d40');

  //Icon Color ------------------------------
  static Color iconMenuColor = HexColor.fromHex('153243');
  static Color iconCardShadowColor = HexColor.fromHex('004d40');
  static Color iconCardColor = HexColor.fromHex('d4ffff');
}
