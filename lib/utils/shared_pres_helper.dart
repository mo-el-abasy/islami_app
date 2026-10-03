import 'package:shared_preferences/shared_preferences.dart';

//todo:save data =>write data
class sharedPrefKey {
  static const String most_recently = 'most_recently';
}

void saveLastSuraIndex(int newSuraIndex) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
//todo:get list from shared pref.
  List<String> mostRecentList =
      prefs.getStringList(sharedPrefKey.most_recently) ?? [];
  if (mostRecentList.contains('$newSuraIndex')) {
    mostRecentList.remove('$newSuraIndex');
    mostRecentList.insert(0, '$newSuraIndex');
  } else {
    mostRecentList.insert(0, '$newSuraIndex');
  }
  if (mostRecentList.length > 5) {
    // mostRecentList.removeLast();
    mostRecentList = mostRecentList.sublist(0, 5);
  }
  //todo:add new sura index to list
//todo:save last sura index.
  await prefs.setStringList(sharedPrefKey.most_recently, mostRecentList);
}

//todo:read data =>get data
Future<List<int>> readMostRecentList() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentAsString =
      prefs.getStringList(sharedPrefKey.most_recently) ?? [];
  //todo:list string=>list int.
  //todo:["1","2","3"]=>[1,2,3].
  List<int> mostRecentAsInt =
      mostRecentAsString.map((element) => int.parse(element)).toList();
  return mostRecentAsInt;
  // return mostRecentAsInt.reversed.toList();
}
