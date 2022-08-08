import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/verses_widget.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String RouteName = 'Sura_Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      ReadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(SettingsPovider.GetBackGround()))),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(args.title)),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())

            : Container(
          margin: EdgeInsets.symmetric(vertical:64 ,horizontal: 12),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24)
          ),
              child: ListView.separated(
                  itemCount: verses.length,
                  itemBuilder: (_, index) {
                    return VersesWidget(index, verses[index]);
                  },
                  separatorBuilder: (_, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 64),
                      height: 2,
                      width: double.infinity,
                      color: Theme.of(context).primaryColor,
                    );
                  },
                ),
            ),
      ),
    );
  }

  void ReadFile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.trim().split("\r\n");
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String title;
  int index;

  SuraDetailsArgs(this.index, this.title);
}
