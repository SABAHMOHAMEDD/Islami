import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  int  index;
  String content;
  VersesWidget(this.index,this.content);
  @override
  Widget build(BuildContext context) {
 return
    Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 6 ),
        child: Center(
          child: ( Text('$content {${index+1}}',style: Theme.of(context).textTheme.headline5,
            textDirection: TextDirection.rtl
            ,

            )

          ),
        )

    );

  }
}
