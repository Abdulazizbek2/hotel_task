import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/home_bloc/home_bloc.dart';
import 'package:hotel_task/src/presentation/pages/component/app_bar_component.dart';
import 'package:hotel_task/src/presentation/pages/component/bottom_sheet_component.dart';
import 'package:hotel_task/src/presentation/routes/routes.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

import 'widgets/hotel_detail.dart';
import 'widgets/info_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (contextBl, state) {
      return Scaffold(
        primary: true,
        backgroundColor: Style.backgroundColor,
        appBar: AppBarComponent(
          title: "hotel".tr(),
          automaticallyImplyLeading: false,
        ),
        body: state.hotelInfoModel?.id == null
            ? const SizedBox()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    HotelDetail(
                      hotelDetail: state.hotelInfoModel,
                    ),
                    8.verticalSpace,
                    InfoWidget(
                      hotelDetail: state.hotelInfoModel,
                    ),
                    102.verticalSpace,
                  ],
                ),
              ),
        bottomSheet: BottomSheetButtonComponent(
          onPressed: () {
            Navigator.of(contextBl).push(AppRoutes.rooms(contextBl));
          },
          title: "to_room_selection".tr(),
        ),
      );
    });
  }
}
