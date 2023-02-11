import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
        unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
      ));
}
