import 'package:flutter/material.dart';

class AppStyle {
  static Color bg = Color(0xff07213B);
  static Color txw = Color(0xffE5E7E9);
  static Color txg = Color(0xff16DE93);
  static Color txr = Color(0xffFB5E5C);
  static Color bgl = Color(0xffF0D3153);

  static TextStyle title = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle subtitleMain = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static TextStyle stdtw = TextStyle(color: AppStyle.txw);
  static TextStyle stdtb = TextStyle(fontWeight: FontWeight.bold);

  static EdgeInsets pv10 = EdgeInsets.symmetric(vertical: 10.0);
}
