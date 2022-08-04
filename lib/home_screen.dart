import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadethtab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/mytheme.dart';

class HomeScreen extends StatefulWidget {

  static const String RouteName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var SelectedTabIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(

          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/background_pattern.png')

          )

      ),

      child: Scaffold(
        appBar: AppBar(

          title: const Center(
              child: Text('Islami',
                ))),

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),

          child: BottomNavigationBar(
            currentIndex:SelectedTabIndex ,
            onTap: (index){
              SelectedTabIndex=index;
              setState((){});
            },

            items:  const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_moshaf.png' ),),label: 'quran',),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_quran.png' )),label: 'hadeth',),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_sebha.png' )),label: 'sebha',),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_radio.png' )),label: 'radio',)


            ],



          ),
        ),



      body: tabs[SelectedTabIndex] ,

      ),
    );
  }

  List<Widget> tabs=[QuranTab(),HadethTab(),TasbehTab(),RadioTab()];
}

