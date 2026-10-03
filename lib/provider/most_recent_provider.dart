import 'package:flutter/cupertino.dart';
import 'package:islami_app/utils/shared_pres_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class mostRecentPorvider extends ChangeNotifier {
  List<int> mostRecentList = [];

//todo:read data =>get data
  void readMostRecentList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentAsString =
        prefs.getStringList(sharedPrefKey.most_recently) ?? [];
    //todo:list string=>list int.
    //todo:["1","2","3"]=>[1,2,3].
    mostRecentList =
        mostRecentAsString.map((element) => int.parse(element)).toList();
    notifyListeners();

    // return mostRecentAsInt.reversed.toList();
  }
}
