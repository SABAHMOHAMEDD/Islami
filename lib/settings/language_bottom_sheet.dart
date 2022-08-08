import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/providers/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);

    return Container(
      child: Column(
        children: [
         InkWell(
           onTap: (){
             SettingsPovider.ChangeLang('en');

           },
             child:
             SettingsPovider.CurrentLang=='en'? GetSelectedItem('English'):

             GetUnSelectedItem('English')),
          SizedBox(height: 12,),
        InkWell(
            onTap: (){
              SettingsPovider.ChangeLang('ar');

            },
            child:  SettingsPovider.CurrentLang=='ar'? GetSelectedItem('العربية'):

              GetUnSelectedItem('العربية')

            )
        ],
      ),
    );
  }

  Widget GetSelectedItem(String text){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .headline3),
        Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget GetUnSelectedItem(String text){
  return  Row(
      children: [
        Text(text ,
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );

  }
}
