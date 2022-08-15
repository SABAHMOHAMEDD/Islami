import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth/hadethtab.dart';
import 'package:islami/home/providers/settings_provider.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/sebha/tasbeh_tab.dart';
import 'package:islami/settings/settings_tab.dart';
import 'package:provider/provider.dart';

import 'home/sebha/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var SelectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(SettingsPovider.GetBackGround())
          )),
      child: Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          AppLocalizations.of(context)!.app_title,
        ))),
        bottomNavigationBar:
        BottomNavigationBar(
          currentIndex: SelectedTabIndex,
          onTap: (index) {
            SelectedTabIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,


              icon: ImageIcon(
                AssetImage('assets/images/ic_moshaf.png'),
              ),
                label:AppLocalizations.of(context)?.quran_title
            ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,

                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label:AppLocalizations.of(context)?.hadeth_title
            ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,

                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label:AppLocalizations.of(context)?.sebha_title
            ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,

                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
              label:AppLocalizations.of(context)!.radio_title
            ),
            BottomNavigationBarItem(
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)?.settings_title,
            )
          ],
        ),
        body: tabs[SelectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab(),SettingsTab()];
}
