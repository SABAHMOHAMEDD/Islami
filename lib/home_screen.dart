import 'package:flutter/material.dart';
import 'package:islami/generated/l10n.dart';
import 'package:islami/home/hadeth/hadethtab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var SelectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/background_pattern.png'))),
      child: Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          AppLocalizations.of(context)!.app_title,
        ))),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: SelectedTabIndex,
            onTap: (index) {
              SelectedTabIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/ic_moshaf.png'),
                ),
                  label:AppLocalizations.of(context)?.quran_title
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label:AppLocalizations.of(context)?.hadeth_title
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label:AppLocalizations.of(context)?.sebha_title
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label:AppLocalizations.of(context)!.radio_title
              )
            ],
          ),
        ),
        body: tabs[SelectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
