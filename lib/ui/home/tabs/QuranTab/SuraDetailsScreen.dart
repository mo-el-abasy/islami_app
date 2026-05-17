import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/quranresorce.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/suracontent.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/Appassets.dart';

class Suradetailsscreen extends StatefulWidget {
  Suradetailsscreen({super.key});

  @override
  State<Suradetailsscreen> createState() => _SuradetailsscreenState();
}

class _SuradetailsscreenState extends State<Suradetailsscreen> {
  List<String> vers = [];

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    if (vers.isEmpty) {
      LoadSuraFile(index);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          quranresorce.englishQuranSuraList[index],
          style: AppStyle.bold20primary,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Appassets.background,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.03,
          ),
          child: Column(
            children: [
              Text(
                quranresorce.arabicQuranSuraList[index],
                style: AppStyle.bold20primary,
              ),
              Expanded(
                child: vers.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                        color: App_Color.primarycolor,
                      ))
                    : ListView.separated(
                        padding: EdgeInsets.only(top: height * 0.03),
                        itemBuilder: (context, index) {
                          return suracontent(
                            content: vers[index],
                            index: index,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: height * 0.02,
                          );
                        },
                        itemCount: vers.length,
                      ),
              ),
              SizedBox(height: height * 0.10)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> LoadSuraFile(int index) async {
    String filecontent =
        await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    List<String> suraline = filecontent.split('\n');
    setState(() {
      vers = suraline;
    });
  }
}
