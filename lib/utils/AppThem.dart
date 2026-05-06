import 'package:flutter/material.dart';
import 'package:islami_app/utils/AppStyle.dart';
import 'package:islami_app/utils/App_color.dart';

class AppThem {
  static final ThemeData derkthem = ThemeData(
    scaffoldBackgroundColor: App_Color.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: App_Color.whitecolor,
      unselectedItemColor: App_Color.blackcolor,
    ),
    textTheme: TextTheme(headlineLarge: AppStyle.bold16white),
  );
}
