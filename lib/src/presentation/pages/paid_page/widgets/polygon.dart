import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class PolygonIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  const PolygonIcon({super.key, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 10.h,
        width: height ?? 10.w,
        decoration: ShapeDecoration(
          shape: const StarBorder.polygon(sides: 6),
          color: color ?? Colors.black,
        ),
        color: Style.lightGrey);
  }
}
