import 'package:flutter/material.dart';
import 'package:islami/hadethtab.dart';
import 'package:islami/quran_tab.dart';
import 'package:islami/radio_tab.dart';
import 'package:islami/tasbeh_tab.dart';

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
      decoration: BoxDecoration(

          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/background_pattern.png')

          )

      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
              child: Text('Islami', style: TextStyle(color: Colors.black,
                 fontWeight: FontWeight.w500),)),),

       bottomNavigationBar: BottomNavigationBar(
         currentIndex:SelectedTabIndex ,
        onTap: (index){
           SelectedTabIndex=index;
           setState((){});
        },
        selectedIconTheme: const IconThemeData(
          color: Colors.black
        ),
         unselectedIconTheme: const IconThemeData(
            color: Colors.white
           ),
         selectedLabelStyle: const TextStyle(
           color: Colors.black
         ),
         unselectedLabelStyle: const TextStyle(
           color: Colors.black
         ),
         items: [
         BottomNavigationBarItem( backgroundColor: Color(0xFFB7935F), icon: ImageIcon(AssetImage( 'assets/images/ic_radio.png' ),),label: 'quran',),
         BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_sebha.png' )),label: 'sebha',),
         BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_moshaf.png' )),label: 'moshaf',),
         BottomNavigationBarItem(icon: ImageIcon(AssetImage( 'assets/images/ic_quran.png' )),label: 'quran',)


       ],



       ),

      body: tabs[SelectedTabIndex] ,

      ),
    );
  }
  List<Widget> tabs=[QuranTab(),HadethTab(),TasbehTab(),RadioTab()];
}
