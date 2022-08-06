import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth_name_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<hadeth> hadethlist = [];

  @override
  Widget build(BuildContext context) {
    if (hadethlist.isEmpty) ReadhadethFile();
    return Column(
      children: [
        Image.asset('assets/images/hadethtab_header.png'),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                      width: 2, color: Theme.of(context).primaryColor))),
          child: Text(
            'الاحاديث',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, int index) {
              return hadethlist.isEmpty?
                  Center(child: CircularProgressIndicator()):

                HadethNameWidget(hadethlist[index]);
            },
            itemCount: hadethlist.length,
            separatorBuilder: (_, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 64),
                height: 2,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
              );
            },
          ),
        )
      ],
    );
  }

  void ReadhadethFile() async {
    // بيحمل الفايل كله لسة
    String filecontent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    // بيقسم الاحاديث كل حديث لوحده
    List<String> allhadeth = filecontent.trim().split('#');
    //made the list of the one prepared hadeth to be shown later at fistr its empty
    // its a hedeth (class)type which is a class of the title and content instead of making two lists of string type
    List<hadeth> ahadethOfFile = [];
    //هنا عامل لوب على كل حديث منهم لوحده وشغال عليه  يقسمه سطور ويحطهم جوة list واول سطر منه هو العنوان
    for (int i = 0; i < allhadeth.length; i++) {
      List<String> hadethlines = allhadeth[i].trim().split('\n');
      String title = hadethlines[0]; // title is the first line
      if (title.isEmpty)
        continue; // if there is no title so skip the following code
      hadethlines.removeAt(0); // remove the title so we can have the content
      String content =
          hadethlines.join('\n'); // we have the content joined again
      hadeth h = hadeth(title, content);
      print(h);
      ahadethOfFile.add(h);
    }
    hadethlist = ahadethOfFile;
    setState(() {});
  }
}

class hadeth {
  String title;
  String content;

  hadeth(this.title, this.content);
}
