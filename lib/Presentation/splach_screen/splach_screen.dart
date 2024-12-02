
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_app/core/colors-manger/colors-manger.dart';
import '../../core/assets_manger/assets_manger.dart';
import '../../core/routes_manger/routes_manger.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    Timer(const Duration(seconds: 2),(){Navigator.pushNamed(context, RoutesManger.homeRoute);},);

  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: ColorsManger.colorScreen,
      child: Stack(
      children: [
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(AssetsManger_png.logoMovies),
            const Spacer(),
            Image.asset(AssetsManger_png.headFlutter)
          ],
        )
      ],
      ),
    );
  }
}
