import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadethtab.dart';

import 'hadeth_details_widget.dart';

class HadethNameWidget extends StatelessWidget {
  hadeth Hadeth;
  HadethNameWidget(this.Hadeth);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsWidget.RouteName,arguments:Hadeth );
      },
      child: Container(
          alignment: Alignment.center,
          child: Text(Hadeth.title, style: Theme.of(context).textTheme.headline4,
          )),
    );
  }
}

