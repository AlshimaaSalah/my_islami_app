import 'package:flutter/material.dart';
import 'package:islamiiapp/home/quran/sura_details_arguments.dart';
import 'package:islamiiapp/home/quran/suradetailsscreen.dart';

class SuraTitleWidget extends StatelessWidget {
  String title;
  int index;

  SuraTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsScreen.routName,
          arguments: SuraDetailsArguments(name: title, index: index),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        child: Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
