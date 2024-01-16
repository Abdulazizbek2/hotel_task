import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class AddToutistTextFielsWidgets extends StatelessWidget {
  const AddToutistTextFielsWidgets(
      {super.key, required this.isShow, required this.onPressed});

  final bool isShow;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return isShow
        ? const SizedBox()
        : DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r), color: Style.white),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, bottom: 6.h, top: 6.h),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "add_touris".tr(),
                          style: Style.medium20(
                            color: Style.black,
                            size: 20.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: onPressed,
                          icon: Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.r),
                                color: Style.blueText),
                            child: const Icon(
                              Icons.add,
                              color: Style.white,
                            ),
                          ),
                          color: Style.black,
                          iconSize: 24.sp,
                        )
                      ],
                    ),
                  ]),
            ));
  }
}
