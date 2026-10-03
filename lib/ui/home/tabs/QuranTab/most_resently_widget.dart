import 'package:flutter/material.dart';
import 'package:islami_app/provider/most_recent_provider.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/quranresorce.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/App_route.dart';
import 'package:islami_app/utils/Appassets.dart';
import 'package:provider/provider.dart';

class most_recently_widget extends StatefulWidget {
  most_recently_widget({super.key});

  @override
  State<most_recently_widget> createState() => _most_recently_widgetState();
}

class _most_recently_widgetState extends State<most_recently_widget> {
  late mostRecentPorvider MostRcentProvider;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MostRcentProvider.readMostRecentList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    MostRcentProvider = Provider.of<mostRecentPorvider>(context);
    return Visibility(
      visible: MostRcentProvider.mostRecentList.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  return InkWell(
                    onTap: () {
                      MostRcentProvider.mostRecentList[index];
                      Navigator.of(context).pushNamed(
                          App_route.Suradetailsscreen,
                          arguments: MostRcentProvider.mostRecentList[index]);
                    },
                    child: Container(
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
                                quranresorce.englishQuranSuraList[
                                    MostRcentProvider.mostRecentList[index]],
                                style: AppStyle.bold24black,
                              ),
                              Text(
                                quranresorce.arabicQuranSuraList[
                                    MostRcentProvider.mostRecentList[index]],
                                style: AppStyle.bold24black,
                              ),
                              Text(
                                "${quranresorce.versesCountList[MostRcentProvider.mostRecentList[index]]} Verses ",
                                style: AppStyle.bold16black,
                              ),
                            ],
                          ),
                          Image.asset(Appassets.mostrecently),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(width: width * 0.02),
                itemCount: MostRcentProvider.mostRecentList.length),
          ),
          SizedBox(height: height * 0.02),
        ],
      ),
    );
  }
}
