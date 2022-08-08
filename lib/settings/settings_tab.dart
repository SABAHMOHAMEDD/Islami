import 'package:flutter/material.dart';
import 'package:islami/generated/l10n.dart';
import 'package:islami/home/providers/settings_provider.dart';
import 'package:islami/settings/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../home/providers/settings_provider.dart';
import 'Theme_Bottom_Sheet.dart';


class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);
    return Container(

      padding: EdgeInsets.all(8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

              Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.headline3),


          SizedBox(height: 4,),

          InkWell(
            onTap: (){
               ShowLanguageBottomSheet();

            },
            child: Container(
                   padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color:Theme.of(context).primaryColor,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).backgroundColor,

                    ),

                    child: Text(
                        SettingsPovider.CurrentLang=='en'? 'English':
                            'العربية'
                        ,style: Theme.of(context).textTheme.headline3)),
          ),
          SizedBox(height: 16,),


          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.headline3,),


          SizedBox(height: 4,),

          Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor,
                    width: 1
                ),
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).backgroundColor,

              ),

              child: InkWell (
                  onTap: (){

                    ShowThemeBottomSheet();
                  },
                  child:

                  Text(
                      SettingsPovider.isDarkMode()?AppLocalizations.of(context)!.dark:
                      AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.headline3))),
            ],



      ),
    );
  }

  void ShowLanguageBottomSheet(){

    showModalBottomSheet(context: context, builder:(buildContext){
      return LanguageBottomSheet();
    }

    );

  }
  void ShowThemeBottomSheet(){

    showModalBottomSheet(context: context, builder:(buildContext){
      return ThemeBottomSheet();
    }

    );

  }
}
