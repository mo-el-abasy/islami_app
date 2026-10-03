import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/HadethTab/hadethItem.dart';

class hadethtab extends StatelessWidget {
  const hadethtab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      items: List.generate(50, (index) => index).map((index) {
        return hadethitem(index: index + 1);
      }).toList(),
    );
  }
}
