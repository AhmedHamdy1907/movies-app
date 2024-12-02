
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/my_app/my_app.dart';

import '../../../../core/assets_manger/assets_manger.dart';
class ReleasesItem extends StatelessWidget {
  const ReleasesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Stack(
        children: [
          Container(
            height: 127.74.h,
              width: 96.87.w,
              child: Image.asset(AssetsManger_png.image1,fit: BoxFit.cover,)),
          InkWell(onTap: (){},
              child: Image.asset(AssetsManger_png.bookmark,fit: BoxFit.cover,height: 36.h,width: 27.w,)),
        ],
      ),
    );
  }
}
