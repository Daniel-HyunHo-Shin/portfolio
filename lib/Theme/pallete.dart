import 'package:flutter/material.dart';

class Pallete {
  static const heading1 = TextStyle(fontSize: 58, fontWeight: FontWeight.bold);
  static const heading2 = TextStyle(fontSize: 48, fontWeight: FontWeight.bold);
  static const heading3 = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  static const heading4 = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  static const heading5 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static const subHeading =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static const paragraphL =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  /// Fontsize:16, FontWeight:w500
  ///
  ///
  static const paragraphM =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static var darkModeAppTheme = ThemeData().copyWith(
    useMaterial3: true,
  );
}
