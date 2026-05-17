import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/quranresorce.dart';
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
        child: vers.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: App_Color.primarycolor,
              ))
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Text(vers[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox();
                },
                itemCount: vers.length,
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
