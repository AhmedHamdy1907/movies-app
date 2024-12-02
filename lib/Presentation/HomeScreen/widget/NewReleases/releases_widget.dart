import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/colors-manger/colors-manger.dart';
import 'package:movies_app/presentation/HomeScreen/widget/NewReleases/releases_item.dart';

class ReleasesWidget extends StatelessWidget
{
   const ReleasesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManger.Lightblack,
      height:187.h ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Text("New Releases ",style: TextStyle(fontSize: 15.sp,color:ColorsManger.white)),
           ),
          Container(
            height:127.74.h ,
            child: ListView.builder(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 9.w),
                  child: ReleasesItem(),
                )),
          ),
          // SizedBox(height: 10.h,)
        ],
      ),
    );
  }
}
