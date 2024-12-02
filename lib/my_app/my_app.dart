import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/theme/MyTheme.dart';
import '../core/routes_manger/routes_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(412, 892),
      child: MaterialApp
        (
        debugShowCheckedModeBanner: false,
        onGenerateRoute:RoutesManger.router,
          initialRoute: RoutesManger.splashscreen,
        theme:MyTheme.theme,
        themeMode: ThemeMode.light,

      ),
    );
  }
}
