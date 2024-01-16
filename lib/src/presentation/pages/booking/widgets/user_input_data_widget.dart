import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/pages/component/custom_text_field.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

import '../../component/input_formaters.dart';

class UserInputDataWidget extends StatefulWidget {
  const UserInputDataWidget({
    super.key,
    required this.isShow,
    required this.validateError,
    required this.nameController,
    required this.surnameController,
    required this.dateBirthController,
    required this.citizenshipController,
    required this.passportNumberController,
    required this.passportValidityPeriodController,
    required this.numberUser,
  });
  final int numberUser;
  final bool validateError;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController dateBirthController;
  final TextEditingController citizenshipController;
  final TextEditingController passportNumberController;
  final TextEditingController passportValidityPeriodController;
  final bool isShow;

  @override
  State<UserInputDataWidget> createState() => _UserInputDataWidgetState();
}

class _UserInputDataWidgetState extends State<UserInputDataWidget> {
  late bool showAll;
  @override
  void initState() {
    showAll = widget.isShow;
    super.initState();
  }

  final _dateFormatter = DateInputFormater();
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r), color: Style.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.numberUser}_touris".tr(),
                      style: Style.medium20(
                        size: 22.sp,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 20.r,
                      onPressed: () {
                        setState(() {
                          showAll = !showAll;
                        });
                      },
                      icon: SizedBox(
                        height: 32.h,
                        width: 32.w,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: Style.blueText.withOpacity(0.1)),
                          child: Icon(
                            showAll
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: Style.blueText,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                !showAll
                    ? const SizedBox()
                    : Column(
                        children: [
                          17.verticalSpace,
                          CustomTextFieldInput(
                            labelText: 'name'.tr(),
                            validateError: widget.validateError,
                            controller: widget.nameController,
                          ),
                          8.verticalSpace,
                          CustomTextFieldInput(
                            labelText: 'surname'.tr(),
                            validateError: widget.validateError,
                            controller: widget.surnameController,
                          ),
                          8.verticalSpace,
                          CustomTextFieldInput(
                            labelText: 'date_birth'.tr(),
                            dateFormatter: [_dateFormatter],
                            validateError: widget.validateError,
                            controller: widget.dateBirthController,
                            lentEr: 10,
                            keyboardType: TextInputType.number,
                          ),
                          8.verticalSpace,
                          CustomTextFieldInput(
                            labelText: 'citizenship'.tr(),
                            validateError: widget.validateError,
                            controller: widget.citizenshipController,
                          ),
                          8.verticalSpace,
                          CustomTextFieldInput(
                            labelText: 'passport_number'.tr(),
                            validateError: widget.validateError,
                            controller: widget.passportNumberController,
                          ),
                          8.verticalSpace,
                          CustomTextFieldInput(
                            labelText: 'passport_validity_period'.tr(),
                            dateFormatter: [_dateFormatter],
                            validateError: widget.validateError,
                            controller: widget.passportValidityPeriodController,
                            lentEr: 10,
                            keyboardType: TextInputType.number,
                          ),
                          3.verticalSpace,
                        ],
                      ),
              ]),
        ));
  }
}
