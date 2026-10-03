import 'package:flutter/material.dart';
import 'package:islami_app/utils/App_color.dart';

class Buildintrodicationscreen extends StatelessWidget {
  final String tittle;
  final String image;
  final String? descrption;
  final double imageTitleSpace;
  Buildintrodicationscreen({
    required this.image,
    required this.tittle,
    required this.imageTitleSpace,
    this.descrption,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          image,
          height: height * 0.33,
        ),
        SizedBox(height: height * imageTitleSpace),
        Text(
          tittle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: App_Color.primarycolor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: height * 0.02),
        if (descrption != null)
          Text(
            descrption!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: App_Color.primarycolor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}
