import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/data/models/room_info_model/rooms_info_model.dart';
import 'package:hotel_task/src/presentation/home_bloc/home_bloc.dart';
import 'package:hotel_task/src/presentation/pages/component/app_bar_component.dart';
import 'package:hotel_task/src/presentation/pages/component/custom_button.dart';
import 'package:hotel_task/src/presentation/pages/rooms/widgets/info_component.dart';
import 'package:hotel_task/src/presentation/routes/routes.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

import '../main/widgets/image_page_view.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({Key? key}) : super(key: key);

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Style.backgroundColor,
            appBar: AppBarComponent(
              title: "booking".tr(),
            ),
            body: ListView.separated(
                itemCount: state.roomsInfoModel?.rooms?.length ?? 0,
                padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
                itemBuilder: (context, index) => RoomsInfoWidget(
                    roomInfoModel: state.roomsInfoModel?.rooms?[index]),
                separatorBuilder: (context, index) => 8.verticalSpace),
          ),
        );
      },
    );
  }
}

class RoomsInfoWidget extends StatelessWidget {
  const RoomsInfoWidget({
    super.key,
    required this.roomInfoModel,
  });

  final Rooms? roomInfoModel;

  @override
  Widget build(BuildContext context) {
    final moneyFormat = NumberFormat("#,##0");
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
          color: Style.white),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            ImagePageBuilder(
                imageList: roomInfoModel?.imageUrls?.toList() ?? []),
            8.verticalSpace,
            Text(
              roomInfoModel?.name ?? "",
              style: Style.medium20(
                color: Style.black,
                size: 22.sp,
              ),
            ),
            8.verticalSpace,
            //peculiarities
            RoomItemsInfoComponent(
                textList: roomInfoModel?.peculiarities?.toList()),
            8.verticalSpace,
            DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Style.blue.withOpacity(0.2)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Подробнее о номере",
                      style: Style.medium16(color: Style.darkBlue, size: 16.sp),
                    ),
                    5.horizontalSpace,
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Style.darkBlue,
                      size: 15.w,
                    ),
                  ],
                ),
              ),
            ),
            //descrioption
            16.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${moneyFormat.format(roomInfoModel?.price ?? "")} ₽",
                  style: Style.semiBold16(
                    size: 28.sp,
                  ),
                ),
                8.horizontalSpace,
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 3.h),
                    child: Text(
                      roomInfoModel?.pricePer ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Style.regular16(
                        size: 16.sp,
                        color: Style.lightGreyText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            CustomButton(
              onPressed: () {
                Navigator.of(context).push(AppRoutes.booking(context));
              },
              title: "Выбрать номер",
              backgroundColor: Style.coursorColor,
            ),
          ],
        ),
      ),
    );
  }
}
