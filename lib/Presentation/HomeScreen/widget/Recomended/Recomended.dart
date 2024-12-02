import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/my_app/my_app.dart';

import '../../../../core/colors-manger/colors-manger.dart';
import 'RecomendedItem.dart';

class Recomended extends StatelessWidget {
  const Recomended({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.only(top: 10.h),
      child: Container(
        color: ColorsManger.Lightblack,
        height:246.h ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding:  REdgeInsets.all(10),
              child:  const Text("Recomended ",style: TextStyle(fontSize: 15,color:ColorsManger.white)),
            ),
            Expanded(
              child: ListView.builder(
                  padding:  REdgeInsets.symmetric(horizontal: 8.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) =>    Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: const RecommendedItem()
                  )),
            ),
            SizedBox(height: 15.h,)
          ],
        ),
      ),
    );

  }
}
