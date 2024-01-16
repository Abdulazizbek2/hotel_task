import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class RatingWidget extends StatelessWidget {
  final String? name;
  final int? rating;
  const RatingWidget({super.key, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    final color = (rating ?? 0) > 4
        ? Style.orangeText
        : (rating ?? 0) > 3
            ? Style.greenText
            : Style.red;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: color.withOpacity(0.16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: color,
            size: 18.sp,
          ),
          2.horizontalSpace,
          Text("$rating $name",
              textAlign: TextAlign.center,
              style: Style.medium14(size: 16.sp, color: color))
        ],
      ),
    );
  }
}
