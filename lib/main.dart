import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/splach_screen.dart';
import 'package:islami_app/utils/App_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: App_route.splashscreen,
      routes: {
        App_route.homeroutename: (context) => home_screen(),
        App_route.splashscreen: (context) => SplashScreen(),
      },
    );
  }
}
