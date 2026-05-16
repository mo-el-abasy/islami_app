import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/quranresorce.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/Appassets.dart';

class Suraitem extends StatelessWidget {
  int index;

  Suraitem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(Appassets.suraitem),
            Text(
              '${index + 1}',
              style: AppStyle.bold20white,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.04,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              quranresorce.englishQuranSuraList[index],
              style: AppStyle.bold20white,
            ),
            Text(
              '${quranresorce.versesCountList[index]}verse',
              style: AppStyle.bold14white,
            ),
          ],
        ),
        Spacer(),
        Text(
          quranresorce.arabicQuranSuraList[index],
          style: AppStyle.bold14white,
        ),
      ],
    );
  }
}
