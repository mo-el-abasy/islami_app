import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/HadethTab/hadethtab.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/quran.dart';
import 'package:islami_app/ui/home/tabs/RadioTab/radiotab.dart';
import 'package:islami_app/ui/home/tabs/SebhaTab/sebhatab.dart';
import 'package:islami_app/ui/home/tabs/TimeTab/timetab.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/Appassets.dart';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int Selectindex = 0;
  List<String> background = [
    Appassets.quranbg,
    Appassets.hadethbg,
    Appassets.sebhabg,
    Appassets.radiobg,
    Appassets.timebg,
  ];
  List<Widget> Tabs = [
    qurantab(),
    hadethtab(),
    sebhatab(),
    radiotab(),
    timetab()
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Image.asset(
        background[Selectindex],
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.03),
                child: Image.asset(
                  Appassets.logobg,
                  height: height * 0.15,
                  width: width * 0.69,
                ),
              ),
              Expanded(child: Tabs[Selectindex])
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Selectindex,
            onTap: (index) {
              Selectindex = index;
              setState(() {});
            },
            backgroundColor: App_Color.primarycolor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: buildbottomnavbar(index: 0, iconname: Appassets.quran),
                  label: "quran"),
              BottomNavigationBarItem(
                  icon: buildbottomnavbar(index: 1, iconname: Appassets.hadeth),
                  label: "hadeth"),
              BottomNavigationBarItem(
                  icon: buildbottomnavbar(index: 2, iconname: Appassets.sebha),
                  label: "sebha"),
              BottomNavigationBarItem(
                  icon: buildbottomnavbar(index: 3, iconname: Appassets.radio),
                  label: "radio"),
              BottomNavigationBarItem(
                  icon: buildbottomnavbar(index: 4, iconname: Appassets.time),
                  label: "time"),
            ],
          )),
    ]);
  }

  Widget buildbottomnavbar({required int index, required String iconname}) {
    return Selectindex == index
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: App_Color.blackcolor,
            ),
            child: ImageIcon(AssetImage(iconname)))
        : ImageIcon(
            AssetImage(iconname),
          );
  }
}
