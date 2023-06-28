import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xff1e1e1e),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Kanit',
      primaryColor: Colors.white);
}
