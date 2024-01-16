import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class TableTextItem extends StatelessWidget {
  final String name;
  final String value;
  const TableTextItem({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 140.w,
          child: Text(
            name,
            style: Style.regular14(
              color: Style.grey2Text,
              size: 14.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: Style.regular14(
              size: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class TableTextItem2 extends StatelessWidget {
  final String name;
  final String value;
  final bool isTotal;
  const TableTextItem2({
    super.key,
    this.isTotal = false,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Style.regular14(
            color: Style.grey2Text,
            size: 14.sp,
          ),
        ),
        Text(
          value,
          style: isTotal
              ? Style.semiBold14(color: Style.blueText, size: 14.sp)
              : Style.regular14(size: 14.sp),
        ),
      ],
    );
  }
}
