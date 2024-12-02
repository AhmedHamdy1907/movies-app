import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/Presentation/HomeScreen/widget/Recomended/Recomended.dart';
import 'package:movies_app/core/colors-manger/colors-manger.dart';
import 'package:movies_app/presentation/HomeScreen/widget/NewReleases/releases_widget.dart';
import 'package:movies_app/presentation/HomeScreen/widget/popular_widget/popular_widget.dart';
import '../../Function_used_widget/function_used_widget.dart';
import '../../core/assets_manger/assets_manger.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManger.colorScreen,
        bottomNavigationBar: buildBottomNavigator(),
        body:  Column(
          children: [
            PopularWidget(),
            SizedBox(height: 20.h,),
            ReleasesWidget(),
            SizedBox(height: 20.h,),
             Recomended(),
          ],
        ),
      ),
    );
  }
   Widget buildBottomNavigator() {
    return BottomNavigationBar(
        elevation: 0,
        onTap: (index) {
          SelectedIndex = index;
          setState(() {
          });
        },
        currentIndex: SelectedIndex,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: ColorsManger.Lightblack,
              icon: ImageIcon(AssetImage(AssetsManger_png.iconHome),),
              label: "HOME",),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManger_png.iconSearch)),
              label: "SEARCH"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManger_png.iconBrowse)),
              label: "BROWSE"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManger_png.iconWatchlist)),
              label: "WATCHLIST")

        ]
    );

   }

}
