import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class RoomItemsInfoComponent extends StatelessWidget {
  const RoomItemsInfoComponent({
    super.key,
    required this.textList,
  });

  final List<String>? textList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: textList
              ?.map((text) => DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Style.lightGrey2),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Text(
                        text,
                        style: Style.medium20(
                          color: Style.grey2Text,
                          size: 16.sp,
                        ),
                      ),
                    ),
                  ))
              .toList() ??
          [],
    );
  }
}
