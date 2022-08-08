import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../home/providers/settings_provider.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);

    return Container(


      child: Column(
      children: [
        InkWell(
            onTap: (){
              SettingsPovider.ChangeTheme(ThemeMode.light);

            },

            child:
            SettingsPovider.isDarkMode()? GetUnSelectedItem(AppLocalizations.of(context)!.light):

            GetSelectedItem(AppLocalizations.of(context)!.light)),
        SizedBox(height: 12,),
        InkWell(
            onTap: (){
              SettingsPovider.ChangeTheme(ThemeMode.dark);

            },
            child:  SettingsPovider.isDarkMode()?
            GetSelectedItem(AppLocalizations.of(context)!.dark):

            GetUnSelectedItem(AppLocalizations.of(context)!.dark)

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
                .headline3
        ),
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
