import 'package:flutter/material.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/Appassets.dart';

class sebhatab extends StatefulWidget {
  sebhatab({
    super.key,
  });

  @override
  State<sebhatab> createState() => _sebhatabState();
}

class _sebhatabState extends State<sebhatab> {
  int counter = 0;

  int zekkrIndex = 0;

  List<String> zekr = [
    "الله اكبر",
    "الحمدلله",
    "سبحان الله",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Text(
        "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
        style: AppStyle.bold30white,
      ),
      SizedBox(
        height: height * 0.05,
      ),
      Image.asset(Appassets.hand),
      Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
              onTap: () {
                counter++;
                azkar();
                setState(() {});
              },
              child: Image.asset(
                Appassets.sebha1,
                height: height * 0.4,
                width: width * 0.8,
              )),
          Column(
            children: [
              Text(
                zekr[zekkrIndex],
                style: AppStyle.bold30white,
              ),
              Text(
                "$counter",
                style: AppStyle.bold30white,
              )
            ],
          ),
        ],
      )
    ]);
  }

  void azkar() {
    if (counter == 33) {
      counter = 0;
      zekkrIndex++;
      if (zekkrIndex == zekr.length) {
        zekkrIndex = 0;
      }
    }
  }
}
