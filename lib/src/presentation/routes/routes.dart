import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_task/src/domain/apis/apis.dart';
import 'package:hotel_task/src/domain/ropository/home_repo.dart';
import 'package:hotel_task/src/presentation/home_bloc/home_bloc.dart';
import 'package:hotel_task/src/presentation/pages/booking/booking.dart';
import 'package:hotel_task/src/presentation/pages/main/main_page.dart';
import 'package:hotel_task/src/presentation/pages/paid_page/paid_page.dart';
import 'package:hotel_task/src/presentation/pages/rooms/rooms.dart';

class AppRoutes {
  /// first page
  static MaterialPageRoute main() => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => HomeBloc(HomeRepository(HotelService.create()))
            ..add(const HomeEvent.hotelDetail()),
          child: const MainPage(),
        ),
      );
  // second page
  static MaterialPageRoute rooms(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<HomeBloc>(context)
            ..add(const HomeEvent.roomsDetail()),
          child: const RoomsPage(),
        ),
      );
  // third page
  static MaterialPageRoute booking(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<HomeBloc>(context)
            ..add(const HomeEvent.bookingHotel()),
          child: const BookingPage(),
        ),
      );
// finaly page
  static MaterialPageRoute paidPage() => MaterialPageRoute(
        builder: (_) => const PaidPage(),
      );
}
