import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/pages/component/app_bar_component.dart';
import 'package:hotel_task/src/presentation/pages/component/bottom_sheet_component.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class PaidPage extends StatefulWidget {
  const PaidPage({Key? key}) : super(key: key);

  @override
  State<PaidPage> createState() => _PaidPageState();
}

class _PaidPageState extends State<PaidPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.white,
      appBar: AppBarComponent(
        title: "order_has_been_paid".tr(),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 21.w, right: 21.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Style.backgroundColor,
                  borderRadius: BorderRadius.circular(47.r)),
              child: SizedBox(
                height: 94.w,
                width: 94.w,
                child: Center(
                  child: Text(
                    "\u{1F389}",
                    style: TextStyle(fontSize: 44.sp),
                  ),
                ),
              ),
            ),
            32.verticalSpace,
            Text(
              "order_has_been_processed".tr(),
              style: Style.medium20(
                color: Style.black,
                size: 22.sp,
              ),
            ),
            20.verticalSpace,
            Text(
              "order_text".tr(),
              textAlign: TextAlign.center,
              style: Style.regular14(
                color: Style.grey2Text,
                size: 16.sp,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
      bottomSheet: BottomSheetButtonComponent(
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        title: "super".tr(),
      ),
    );
  }
}
