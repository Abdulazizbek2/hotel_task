import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/data/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:hotel_task/src/presentation/pages/booking/widgets/tablet_text_item.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class PaidInfoWidget extends StatelessWidget {
  const PaidInfoWidget({
    super.key,
    required this.bookinHotelInfoModel,
    required this.totalPrice,
  });
  final BookingHotelModel? bookinHotelInfoModel;

  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    final moneyFormat = NumberFormat("#,##0");
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: Style.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableTextItem2(
              name: "tour".tr(),
              value:
                  "${moneyFormat.format(bookinHotelInfoModel?.tourPrice ?? 0)} ₽",
            ),
            16.verticalSpace,
            TableTextItem2(
              name: "fuel_surcharge".tr(),
              value:
                  "${moneyFormat.format(bookinHotelInfoModel?.fuelCharge ?? 0)} ₽",
            ),
            16.verticalSpace,
            TableTextItem2(
              name: "service_surcharge".tr(),
              value:
                  "${moneyFormat.format(bookinHotelInfoModel?.serviceCharge ?? 0)} ₽",
            ),
            16.verticalSpace,
            TableTextItem2(
              isTotal: true,
              name: "total_p".tr(),
              value: totalPrice,
            ),
          ],
        ),
      ),
    );
  }
}

class BookinHotelInfoItems extends StatelessWidget {
  const BookinHotelInfoItems({
    super.key,
    required this.bookinHotelInfoModel,
  });
  final BookingHotelModel? bookinHotelInfoModel;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: Style.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableTextItem(
              name: "departure".tr(),
              value: bookinHotelInfoModel?.departure ?? "",
            ),
            10.verticalSpace,
            TableTextItem(
              name: "state".tr(),
              value: bookinHotelInfoModel?.arrivalCountry ?? "",
            ),
            16.verticalSpace,
            TableTextItem(
              name: "date".tr(),
              value:
                  "${bookinHotelInfoModel?.tourDateStart}-${bookinHotelInfoModel?.tourDateStop}",
            ),
            16.verticalSpace,
            TableTextItem(
              name: "number_of_nights".tr(),
              value: "${bookinHotelInfoModel?.numberOfNights} ${"nights".tr()}",
            ),
            16.verticalSpace,
            TableTextItem(
              name: "hotel".tr(),
              value: bookinHotelInfoModel?.hotelName ?? "",
            ),
            16.verticalSpace,
            TableTextItem(
              name: "number".tr(),
              value: bookinHotelInfoModel?.room ?? "",
            ),
            16.verticalSpace,
            TableTextItem(
              name: "nutrition".tr(),
              value: bookinHotelInfoModel?.nutrition ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
