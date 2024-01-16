import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_task/src/data/models/hotel_detail/hotel_info_model.dart';
import 'package:hotel_task/src/presentation/pages/rooms/widgets/info_component.dart';
import 'package:hotel_task/src/presentation/util/styles/icon_set.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class InfoWidget extends StatefulWidget {
  final HotelInfoModel? hotelDetail;
  const InfoWidget({super.key, required this.hotelDetail});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  List<List<String>> list = [
    ["facilities".tr(), "essentials".tr(), AppIconsPath.smileIcon],
    ["what_is_included".tr(), "essentials".tr(), AppIconsPath.completeIcon],
    ["what_is_not_included".tr(), "essentials".tr(), AppIconsPath.cancelIcon],
  ];
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r), color: Style.white),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "about_hotel".tr(),
              style: Style.medium20(
                color: Style.black,
                size: 22.sp,
              ),
            ),
            16.verticalSpace,
            //peculiarities
            RoomItemsInfoComponent(
                textList:
                    widget.hotelDetail?.aboutTheHotel.peculiarities?.toList()),
            12.verticalSpace,
            //description
            Text(
              widget.hotelDetail?.aboutTheHotel.description ?? "",
              style: Style.regular14(
                color: Style.black,
                size: 16.sp,
              ),
            ),
            16.verticalSpace,
            //info button
            DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Style.lightGrey2),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(15.w),
                  itemCount: list.length,
                  itemBuilder: (context, index) => CustomListTileForinfo(
                    title: list[index][0],
                    subtitle: list[index][1],
                    imagePath: list[index][2],
                  ),
                  separatorBuilder: (context, index) => Divider(
                    indent: 36.w,
                    height: 21.h,
                    color: Style.dividerColor,
                    thickness: 1.h,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomListTileForinfo extends StatelessWidget {
  const CustomListTileForinfo(
      {super.key, this.title, this.subtitle, this.imagePath});
  final String? title;
  final String? subtitle;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath ?? "",
          width: 24.h,
        ),
        12.horizontalSpace,
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title ?? "",
              style: Style.medium20(
                color: Style.blackText2,
                size: 14.sp,
              ),
            ),
            2.verticalSpace,
            Text(
              subtitle ?? "",
              style: Style.medium20(
                color: Style.grey2Text,
                size: 12.sp,
              ),
            ),
          ]),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
