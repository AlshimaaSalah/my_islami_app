import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiiapp/home/quran/sura_details_arguments.dart';
import 'package:islamiiapp/home/quran/verses_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = "sura";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArguments args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArguments;
    //print(args.index);
    //print(args.name);
    if (verses.isEmpty) readFile(args.index + 1);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: verses.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 12,
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                child: ListView.separated(
                  separatorBuilder: (_, index) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    );
                  },
                  itemBuilder: (_, index) {
                    return VersesWidget(verses[index], index + 1);
                  },
                  itemCount: verses.length,
                ),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String file = await rootBundle.loadString("assets/fiels/$index.txt");
    List<String> lines = file.trim().split('\n');
    // print(lines);
//print(file);
    setState(() {
      verses = lines;
    });
  }
}
