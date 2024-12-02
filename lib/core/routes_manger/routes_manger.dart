import 'package:flutter/material.dart';

import '../../presentation/HomeScreen/HomeScreen.dart';
import '../../presentation/splach_screen/splach_screen.dart';
class RoutesManger
{
  static const String splashscreen="/splash";
  static const String homeRoute="/home";
static  Route<dynamic>? router (RouteSettings settings)
{
switch (settings.name)
    {
  case homeRoute:
    {
      return MaterialPageRoute(builder: (context) =>  HomeScreen(),);
    }
  case  splashscreen:
    {
      return MaterialPageRoute(builder: (context) =>  const SplashScreen(),);
    }
    }
return null;

}


}