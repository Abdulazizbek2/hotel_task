import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_task/src/core/exceptions.dart';
import 'package:hotel_task/src/data/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:hotel_task/src/data/models/hotel_detail/hotel_info_model.dart';
import 'package:hotel_task/src/data/models/room_info_model/rooms_info_model.dart';
import 'package:hotel_task/src/domain/apis/apis.dart';
import 'package:hotel_task/src/domain/common/failure.dart';
import 'package:hotel_task/src/domain/services/log_service.dart';

const String apiKey = "494e522c68744b1ad3e0d6d9aee9905e8cc764ec";
const String platinaApiKey = "QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ";

class HomeRepository {
  final HotelService _hotelService;

  HomeRepository(this._hotelService);

  Future<Either<ResponseFailure, HotelInfoModel>> hotelDetail() async {
    try {
      final res = await _hotelService.hotelDetail();
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  Future<Either<ResponseFailure, RoomsInfoModel>> roomsDetail() async {
    try {
      final res = await _hotelService.roomsDetail();
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  Future<Either<ResponseFailure, BookingHotelModel>> bookingHotel() async {
    try {
      final res = await _hotelService.bookingHote();
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  //del
}
