import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
import 'hadethtab.dart';

class HadethDetailsWidget extends StatelessWidget {
  static const String RouteName = 'Hadeth_Details_Widget';

  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as hadeth;

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(SettingsPovider.GetBackGround()))),
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Islami')),
            ),
            body: Column(
              children: [
                SizedBox(height: 57,),
                Text(
                  args.title,
                  style: Theme.of(context).textTheme.headline5,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 64),
                  height: 2,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Text((args.content),
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl);
                    },

                  ),
                ),

              ],

            )
        )
  );
  }
}


