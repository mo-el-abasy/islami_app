import 'package:flutter/material.dart';
import 'package:islami_app/utils/App_color.dart';

class Buildintrodicationscreen extends StatelessWidget {
  String tittle;
  String image;
  String descrption;
  double imageheight;
  Color textcolor;
  double topspace;
  double imagetotittle;
  double tittletodesc;

  Buildintrodicationscreen(
      {required this.image,
      required this.tittle,
      required this.descrption,
      required this.textcolor,
      required this.imageheight,
      required this.topspace,
      required this.imagetotittle,
      required this.tittletodesc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: topspace),
        Image.asset(
          image,
          height: imageheight,
        ),
        SizedBox(height: imagetotittle),
        Text(
          tittle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: App_Color.primarycolor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: tittletodesc),
        Text(
          descrption,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textcolor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
