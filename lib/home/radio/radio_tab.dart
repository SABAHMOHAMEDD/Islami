import 'package:flutter/material.dart';
import 'package:islami/home/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset('assets/images/radio_header.png'),
          SizedBox(
            height: 50,
          ),
          Text('اذاعة القراّن الكريم',
              style: Theme.of(context).textTheme.bodyText2),
          SizedBox(height: 60),
          provider.isDarkMode()
              ? Image.asset('assets/images/radio_play_dark.png')
              : Image.asset('assets/images/radio_play.png')
        ],
      ),
    );
  }
}