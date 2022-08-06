import 'package:flutter/material.dart';

import 'hadethtab.dart';

class HadethDetailsWidget extends StatelessWidget {
  static const String RouteName = 'Hadeth_Details_Widget';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadeth;

    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background_pattern.png'))),
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
                SingleChildScrollView(
                  child: Container(
                    child:
                               Text((args.content),
                              style: Theme.of(context).textTheme.bodyText1,

                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl
                                )
                          
                          ),
                ),
                  
                
              ],
              
            )
    )
  );
  }
}


