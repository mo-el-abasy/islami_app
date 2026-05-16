import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/SuraItem.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(height: height * 0.03),
          Text(
            "Most Recently ",
            style: AppStyle.bold16white,
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            height: height * 0.18,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    decoration: BoxDecoration(
                      color: App_Color.primarycolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Al-Anbiya",
                              style: AppStyle.bold24black,
                            ),
                            Text(
                              "الأنبياء",
                              style: AppStyle.bold24black,
                            ),
                            Text(
                              "112 Verses ",
                              style: AppStyle.bold16black,
                            ),
                          ],
                        ),
                        Image.asset(Appassets.mostrecently),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(width: width * 0.02),
                itemCount: 10),
          ),
          SizedBox(height: height * 0.02),
          Text(
            "Suras List",
            style: AppStyle.bold16white,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Suraitem(
                    index: index,
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: App_Color.whitecolor,
                    endIndent: width * 0.10,
                    indent: width * 0.10,
                  );
                },
                itemCount: 114),
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
