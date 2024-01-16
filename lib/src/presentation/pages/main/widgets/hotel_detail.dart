import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/data/models/hotel_detail/hotel_info_model.dart';
import 'package:hotel_task/src/presentation/pages/component/custom_button.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

import 'image_page_view.dart';
import 'rating_witget.dart';

class HotelDetail extends StatefulWidget {
  final HotelInfoModel? hotelDetail;
  const HotelDetail({
    super.key,
    this.hotelDetail,
  });

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    final moneyFormat = NumberFormat("#,##0");
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h, top: 5.h),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
          color: Style.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image
          ImagePageBuilder(
              imageList: widget.hotelDetail?.imageUrls.toList() ?? []),
          16.verticalSpace,
          //rating
          RatingWidget(
            name: widget.hotelDetail?.ratingName,
            rating: widget.hotelDetail?.rating,
          ),
          10.verticalSpace,
          //hotel name
          Text(
            widget.hotelDetail?.name ?? "",
            style: Style.medium20(
              color: Style.black,
              size: 22.sp,
            ),
          ),
          //hotel adress
          CustomTextButton(text: widget.hotelDetail?.adress),
          //descrioption
          5.verticalSpace,
          SizedBox(
            height: 36.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${"from".tr()} ${moneyFormat.format(widget.hotelDetail?.minimalPrice ?? "")} ₽",
                  style: Style.semiBold16(
                    size: 29.sp,
                  ),
                ),
                8.horizontalSpace,
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      widget.hotelDetail?.priceForIt ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Style.regular14(
                        color: Style.grey2Text,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
