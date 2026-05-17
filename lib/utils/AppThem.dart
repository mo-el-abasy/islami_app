import 'package:flutter/material.dart';
import 'package:islami_app/utils/App_color.dart';

class AppThem {
  static final ThemeData derkthem = ThemeData(
    scaffoldBackgroundColor: App_Color.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: App_Color.whitecolor,
      unselectedItemColor: App_Color.blackcolor,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: App_Color.blackbgcolor,
      iconTheme: IconThemeData(
        color: App_Color.primarycolor,
      ),
    ),
    // textTheme: TextTheme(
    // headlineLarge: TextStyle(
    //  fontSize: 16,
    //   fontWeight: FontWeight.bold,
    //   color: App_Color.whitecolor,
    //  ),
    //  ),
  );
}
