import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/colors-manger/colors-manger.dart';

class MyTheme
{
  static ThemeData theme=ThemeData(
    useMaterial3: false,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ColorsManger.Lightblack,
        selectedItemColor: ColorsManger.Yellow,
        unselectedItemColor: ColorsManger.gray,
        selectedLabelStyle: TextStyle(fontSize:12 ,fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize:10 ),
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 20

      ),

  );
}