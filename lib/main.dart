import 'package:flutter/material.dart';
import 'package:islami_app/provider/most_recent_provider.dart';
import 'package:islami_app/ui/home/IntrodacctionScreen.dart';
import 'package:islami_app/ui/home/homescreen.dart';
import 'package:islami_app/ui/home/tabs/QuranTab/SuraDetailsScreen.dart';
import 'package:islami_app/utils/AppThem.dart';
import 'package:islami_app/utils/App_route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => mostRecentPorvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: App_route.Introdacctionscreen,
      routes: {
        App_route.Introdacctionscreen: (context) => Introdacctionscreen(),
        App_route.homescreen: (context) => homescreen(),
        App_route.Suradetailsscreen: (context) => Suradetailsscreen(),
      },
      darkTheme: AppThem.derkthem,
      themeMode: ThemeMode.dark,
    );
  }
}
