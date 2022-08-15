import 'package:flutter/material.dart';
import 'package:islami/home/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  double angle = 0;
  var counter = 0;
  int currentIndex = 0;
  List<String> azkar = ['الحمد لله', 'سبحان الله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.47,
            //  so i can control the stack in small area

            child: Stack(
              children: [
                Positioned(
                  child: provider.isDarkMode()
                      ? Image.asset('assets/images/sebha_header_dark.png')
                      : Image.asset('assets/images/sebha_header.png'),
                  left: size.width * .46,
                ),
                Positioned(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: onclick,
                      child: Transform.rotate(
                        angle: angle,
                        child: provider.isDarkMode()
                            ? Image.asset('assets/images/sebha_body_dark.png')
                            : Image.asset('assets/images/sebha_body.png'),
                      ),
                    ),
                    top: 79,
                    left: size.width * .21),
              ],
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: provider.isDarkMode()
                    ? Color(0xFF141A2E)
                    : Color(0xFFB7935F),
                borderRadius: BorderRadiusDirectional.circular(25)),
            child: Center(
                child: Text(
              '$counter',
              style: Theme.of(context).textTheme.bodyText2,
            )),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 137,
            height: 51,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadiusDirectional.circular(20)),
            child: Center(
                child: Text(
              '${azkar[currentIndex]}',
              style: Theme.of(context).textTheme.headline1,
            )),
          ),
        ],
      ),
    );
  }

  onclick() {
    angle--;
    counter++;
    if (counter == 32) {
      currentIndex++;
      counter = 0;
    }
    if (currentIndex == azkar.length) currentIndex = 0;
    setState(() {});
  }
}
