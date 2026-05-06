import 'package:flutter/material.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/Appassets.dart';

class qurantab extends StatelessWidget {
  const qurantab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height * 0.03),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: buildtextfeild(),
              focusedBorder: buildtextfeild(),
              prefixIcon: Image.asset(Appassets.iconsearch),
              hintText: "sura Name",
              hintStyle: AppStyle.bold16white,
            ),
            cursorColor: App_Color.primarycolor,
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildtextfeild() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: App_Color.primarycolor,
        width: 2,
      ),
    );
  }
}
