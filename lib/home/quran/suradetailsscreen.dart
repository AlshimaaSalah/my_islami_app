import 'package:flutter/material.dart';
import 'package:islamiiapp/home/quran/sura_details_arguments.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routName = "sura";

  @override
  Widget build(BuildContext context) {
    SuraDetailsArguments args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArguments;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
      ),
    );
  }
}
