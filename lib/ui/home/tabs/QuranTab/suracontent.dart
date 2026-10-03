import 'package:flutter/material.dart';
import 'package:islami_app/utils/AppStyle.dart';

class suracontent extends StatelessWidget {
  final String content;
  int index;

  suracontent({super.key, required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Text(
      '$content[${index + 1}]',
      textDirection: TextDirection.rtl,
      style: AppStyle.bold20primary,
      textAlign: TextAlign.center,
    );
  }
}
