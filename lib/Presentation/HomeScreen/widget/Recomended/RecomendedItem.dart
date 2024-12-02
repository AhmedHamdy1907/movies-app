import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/colors-manger/colors-manger.dart';
import 'package:movies_app/my_app/my_app.dart';

import '../../../../core/assets_manger/assets_manger.dart';
class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97.w,
      height: 184.h,
      decoration: BoxDecoration(
        border:  Border.all(
          color:  Color(0XFF343534),
          width: 1
        ),
        color:  Color(0XFF343534),
        boxShadow: const [
          BoxShadow(
            color: Color(0XFF343534),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 0)
          )
        ],
          borderRadius: BorderRadius.circular(5.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                height: 128.7.h,
                  width: double.infinity,
                  child: Image.asset(AssetsManger_png.image1,fit: BoxFit.cover,)),
              InkWell(onTap: (){},
                  child: Image.asset(AssetsManger_png.bookmark,fit: BoxFit.cover,height: 36.h,width: 27.w,)),
            ],
          ),
           SizedBox(height: 4,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star,color: ColorsManger.Yellow,size: 12.sp,),
                    SizedBox(width: 5.w,),
                    Text("7.7",style: TextStyle(color: ColorsManger.white,fontSize: 12.sp),)
                  ],
                ),
                SizedBox(height: 4.h,),
                Text("Deadpool 2",style: TextStyle(color: ColorsManger.white,fontSize: 14.sp),textAlign: TextAlign.start,),
                SizedBox(height: 4.h,),
                Text("2018  R  1h 59m",style: TextStyle(color: ColorsManger.gray,fontSize: 10.sp),textAlign: TextAlign.start,)
              ],
            ),
          )

        ],
      ),
    );
  }
}
