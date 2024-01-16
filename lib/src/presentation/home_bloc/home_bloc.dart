import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_task/src/data/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:hotel_task/src/data/models/hotel_detail/hotel_info_model.dart';
import 'package:hotel_task/src/data/models/room_info_model/rooms_info_model.dart';
import 'package:hotel_task/src/domain/ropository/home_repo.dart';
import 'package:hotel_task/src/domain/services/log_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(const _HomeState()) {
    on<_HotelDetail>(_hotelDetail);
    on<_RoomsDetail>(_roomsDetail);
    on<_BookingHotel>(_bookingHotel);
  }

  FutureOr<void> _hotelDetail(
    _HotelDetail event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.hotelDetail();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _pagesHandler: $error");
    }, (data) {
      emit(state.copyWith(hotelInfoModel: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _roomsDetail(
    _RoomsDetail event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.roomsDetail();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _pagesHandler: $error");
    }, (data) {
      emit(state.copyWith(roomsInfoModel: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _bookingHotel(
    _BookingHotel event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.bookingHotel();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _pagesHandler: $error");
    }, (data) {
      emit(state.copyWith(bookingHotelModel: data));
    });
    EasyLoading.dismiss();
  }
}
