import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/Hadeth.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/Appassets.dart';

class hadethitem extends StatefulWidget {
  int index;

  hadethitem({super.key, required this.index});

  @override
  State<hadethitem> createState() => _hadethitemState();
}

class _hadethitemState extends State<hadethitem> {
  Hadeth? hadeth;

  @override
  void initState() {
    super.initState();
    loadHadethFile(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: height * 0.02,
        left: width * 0.02,
        right: width * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: App_Color.primarycolor,
      ),
      child: hadeth == null
          ? Center(
              child: CircularProgressIndicator(
              color: App_Color.blackcolor,
            ))
          : Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      Appassets.hadethleftcornar,
                      width: width * 0.10,
                    ),
                    Expanded(
                      child: Text(
                        hadeth?.title ?? "",
                        style: AppStyle.bold24black,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Image.asset(
                      Appassets.hadetrighttcornar,
                      width: width * 0.10,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(hadeth?.content ?? "",
                        style: TextStyle(
                          color: App_Color.blackcolor,
                        )),
                  ),
                ),
                Image.asset(Appassets.hadethmosqo)
              ],
            ),
    );
  }

  void loadHadethFile(int index) async {
    String filecontent =
        await rootBundle.loadString('assets/files/Hadeth/h$index.txt');
    int fileLinesIndex = filecontent.indexOf('\n');
    String title = filecontent.substring(0, fileLinesIndex);
    String content = filecontent.substring(fileLinesIndex + 1);
    hadeth = Hadeth(title: title, content: content);
    Future.delayed(Duration(seconds: 2));
    setState(() {});
    //List<String> hadethLines = filecontent.split('\n');
    //for (int i = 0; i <= hadethLines.length; i++) {
    // String tittle = hadethLines[0];
    // hadethLines.removeAt(0);
//  دول كدا الطريقتبن هدف كل واجده عشان افرق بين ال tittel و content
  }
}
