import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/home_bloc/home_bloc.dart';
import 'package:hotel_task/src/presentation/pages/booking/widgets/add_tourist_component.dart';
import 'package:hotel_task/src/presentation/pages/booking/widgets/bookin_hotel_info_widget.dart';
import 'package:hotel_task/src/presentation/pages/booking/widgets/user_input_data_widget.dart';
import 'package:hotel_task/src/presentation/pages/component/app_bar_component.dart';
import 'package:hotel_task/src/presentation/pages/component/bottom_sheet_component.dart';
import 'package:hotel_task/src/presentation/pages/component/custom_button.dart';
import 'package:hotel_task/src/presentation/pages/component/custom_text_field.dart';
import 'package:hotel_task/src/presentation/pages/component/input_formaters.dart';
import 'package:hotel_task/src/presentation/routes/routes.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

import '../main/widgets/rating_witget.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    maxTourists = 5;
    touristLeng = 1;
    validateError = false;
    listControllers = List.generate(maxTourists,
        (index) => List.generate(6, (index) => TextEditingController()));
  }

  late int touristLeng;
  late int maxTourists;
  late List<List<TextEditingController>> listControllers;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController phoneController;
  final _mobileFormatter = InternationalPhoneFormatter();

  String totalPrice = "";
  late bool validateError;

  @override
  Widget build(BuildContext context) {
    final moneyFormat = NumberFormat("#,##0");
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        totalPrice =
            "${moneyFormat.format((state.bookingHotelModel?.serviceCharge ?? 0) + (state.bookingHotelModel?.fuelCharge ?? 0) + (state.bookingHotelModel?.tourPrice ?? 0))} ₽";
        return Scaffold(
          backgroundColor: Style.backgroundColor,
          appBar: AppBarComponent(title: "booking".tr()),
          body: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  8.verticalSpace,
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Style.white),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, bottom: 4.h, top: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingWidget(
                            name: state.bookingHotelModel?.ratingName,
                            rating: state.bookingHotelModel?.horating,
                          ),
                          10.verticalSpace,
                          Text(
                            state.bookingHotelModel?.hotelName ?? "",
                            style: Style.medium20(
                              color: Style.black,
                              size: 20.sp,
                            ),
                          ),
                          CustomTextButton(
                              text: state.bookingHotelModel?.hotelAdress),
                        ],
                      ),
                    ),
                  ),
                  8.verticalSpace,
                  BookinHotelInfoItems(
                      bookinHotelInfoModel: state.bookingHotelModel),
                  8.verticalSpace,
                  DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Style.white),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.w, right: 16.w, bottom: 16.h, top: 16.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "information".tr(),
                                style: Style.medium20(
                                  color: Style.black,
                                  size: 20.sp,
                                ),
                              ),
                              20.verticalSpace,
                              CustomTextFieldInput(
                                labelText: 'phoneNumber'.tr(),
                                dateFormatter: [_mobileFormatter],
                                validateError: validateError,
                                controller: phoneController,
                                lentEr: 18,
                                keyboardType: TextInputType.phone,
                              ),
                              8.verticalSpace,
                              CustomTextFieldInputForEmail(
                                labelText: 'check_email'.tr(),
                                validateError: validateError,
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                              ),
                              8.verticalSpace,
                              Text(
                                "confidentInfo".tr(),
                                style: Style.regular14(
                                  color: Style.grey2Text,
                                  size: 14.sp,
                                ),
                              ),
                            ]),
                      )),
                  8.verticalSpace,
                  ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: touristLeng,
                    itemBuilder: (context, index) => UserInputDataWidget(
                      isShow: index == 0 ? true : false,
                      numberUser: index + 1,
                      validateError: validateError,
                      nameController: listControllers[index][0],
                      surnameController: listControllers[index][1],
                      dateBirthController: listControllers[index][2],
                      citizenshipController: listControllers[index][3],
                      passportNumberController: listControllers[index][4],
                      passportValidityPeriodController: listControllers[index]
                          [5],
                    ),
                    separatorBuilder: (context, index) => 8.verticalSpace,
                  ),
                  8.verticalSpace,
                  AddToutistTextFielsWidgets(
                    isShow: touristLeng == maxTourists,
                    onPressed: () {
                      setState(() {
                        touristLeng++;
                      });
                    },
                  ),
                  8.verticalSpace,
                  PaidInfoWidget(
                      bookinHotelInfoModel: state.bookingHotelModel,
                      totalPrice: totalPrice),
                  104.verticalSpace,
                ],
              ),
            ),
          ),
          bottomSheet: BottomSheetButtonComponent(
            onPressed: payToHotel,
            title: "pay".tr() + totalPrice,
          ),
        );
      },
    );
  }

  void payToHotel() {
    validateError = true;
    setState(() {});
    if (!emailController.text.isValidEmail() ||
        phoneController.text.length < 18) {
      return;
    }
    for (var i = 0; i < touristLeng; i++) {
      if (listControllers[i][0].text.length < 3 ||
          listControllers[i][1].text.length < 3 ||
          listControllers[i][2].text.length < 10 ||
          listControllers[i][3].text.length < 3 ||
          listControllers[i][4].text.length < 3 ||
          listControllers[i][5].text.length < 10) {
        return;
      }
    }
    if (formKey.currentState!.validate()) {
      Navigator.of(context).push(AppRoutes.paidPage());
    }
  }
}
