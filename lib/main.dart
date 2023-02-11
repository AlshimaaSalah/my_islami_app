import 'package:flutter/material.dart';
import 'package:islamiiapp/home/home_screen/homescreen.dart';
import 'package:islamiiapp/my_theme.dart';

import 'home/quran/suradetailsscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        Home_Screen.routName: (_) => Home_Screen(),
        SuraDetailsScreen.routName: (_) => SuraDetailsScreen(),
      },
      initialRoute: Home_Screen.routName,
    );
  }
}
