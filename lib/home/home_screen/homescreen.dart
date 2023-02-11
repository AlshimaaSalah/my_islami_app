import 'package:flutter/material.dart';
import 'package:islamiiapp/home/hadith/hadith_tap.dart';
import 'package:islamiiapp/home/quran/quran_tap.dart';
import 'package:islamiiapp/home/radio/radio_tap.dart';
import 'package:islamiiapp/home/sebha/sebha_tap.dart';

class Home_Screen extends StatefulWidget {
  static const String routName = "home_screen";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newSelectedIndex) {
            setState(() {
              selectedIndex = newSelectedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: "Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: "Radio"),
          ],
        ),
      ),
    );
  }

  List<Widget> taps = [QuranTap(), HadithTap(), SebhaTap(), RadioTap()];
}
