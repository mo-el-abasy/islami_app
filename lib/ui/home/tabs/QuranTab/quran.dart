import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/SuraItem.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/most_resently_widget.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/quranresorce.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/App_route.dart';
import 'package:islami_app/utils/Appassets.dart';
import 'package:islami_app/utils/shared_pres_helper.dart';

class qurantab extends StatefulWidget {
  qurantab({super.key});

  @override
  State<qurantab> createState() => _qurantabState();
}

class _qurantabState extends State<qurantab> {
  List<int> filterlist = List.generate(114, (index) => index);
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
            style: AppStyle.bold20primary,
            decoration: InputDecoration(
              enabledBorder: buildtextfeild(),
              focusedBorder: buildtextfeild(),
              prefixIcon: Image.asset(Appassets.iconsearch),
              hintText: "sura Name",
              hintStyle: AppStyle.bold16white,
            ),
            onChanged: (newtext) {
              searchbynewtext(newtext);
            },
            cursorColor: App_Color.primarycolor,
          ),
          SizedBox(height: height * 0.03),
          most_recently_widget(),
          Text(
            "Suras List",
            style: AppStyle.bold16white,
          ),
          Expanded(
            child: filterlist.isEmpty
                ? Center(
                    child: Text(
                      "not sura found",
                      style: AppStyle.bold20primary,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          saveLastSuraIndex(filterlist[index]);
                          Navigator.of(context).pushNamed(
                              App_route.Suradetailsscreen,
                              arguments: filterlist[index]);
                        },
                        child: Suraitem(index: filterlist[index]),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: App_Color.whitecolor,
                        endIndent: width * 0.10,
                        indent: width * 0.10,
                      );
                    },
                    itemCount: filterlist.length),
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

  void searchbynewtext(String newtext) {
    //دى معموله عشان احط فيهت نتيجه البحث الى عندى
    List<int> searchresultlist = [];
    for (int i = 0; i < quranresorce.englishQuranSuraList.length; i++) {
      if (quranresorce.englishQuranSuraList[i]
          .toLowerCase()
          .contains(newtext.toLowerCase())) {
        searchresultlist.add(i);
      }
      if (quranresorce.arabicQuranSuraList[i].contains(newtext)) {
        searchresultlist.add(i);
      }
    }
    filterlist = searchresultlist;
    setState(() {});
  }
}
