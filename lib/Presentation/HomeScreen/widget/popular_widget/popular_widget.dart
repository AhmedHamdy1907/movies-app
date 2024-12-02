import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/colors-manger/colors-manger.dart';

import '../../../../core/assets_manger/assets_manger.dart';


class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 289.h,
      child: Stack(
        children: [
          SizedBox(
            height: 217.h,
              child: Image.asset(AssetsManger_png.image2,fit: BoxFit.cover,)),
          Positioned(
            top: 80.h,
            child: Padding(
              padding:  REdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Container(
                    height: 199.h,
                    width: 129.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r)
                    ),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Stack(
                        children: [
                          Image.asset(AssetsManger_png.image1,),
                           InkWell(onTap: (){},
                              child: Image.asset(AssetsManger_png.bookmark,fit: BoxFit.cover,height: 36.h,width: 27.w,)),
                        ],
                      ),
                    ),
                  ),
                   SizedBox(
                    width: 20.w,
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 140.h,
                      ),
                      Text(
                        "Dora and the lost city of gold",
                        style: TextStyle(
                            fontSize: 14, color: ColorsManger.white),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "2019  PG-13  2h 7m",
                        style: TextStyle(
                            fontSize: 10.sp, color: ColorsManger.gray),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
