import 'package:chopper/chopper.dart';
import 'package:hotel_task/src/core/built_value_converter.dart';
import 'package:hotel_task/src/core/interceptors.dart';
import 'package:hotel_task/src/data/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:hotel_task/src/data/models/hotel_detail/hotel_info_model.dart';
import 'package:hotel_task/src/data/models/room_info_model/rooms_info_model.dart';

part 'apis.chopper.dart';

const String baseUrl = "https://run.mocky.io";

/// hotel services
@ChopperApi(baseUrl: '/v3/')
abstract class HotelService extends ChopperService {
  @Get(path: 'd144777c-a67f-4e35-867a-cacc3b827473')
  Future<Response<HotelInfoModel>> hotelDetail();

  @Get(path: '8b532701-709e-4194-a41c-1a903af00195')
  Future<Response<RoomsInfoModel>> roomsDetail();

  @Get(path: '63866c74-d593-432c-af8e-f279d1a8d2ff')
  Future<Response<BookingHotelModel>> bookingHote();

  static HotelService create() => _$HotelService(_Client(baseUrl, true));
}

base class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: Uri.parse(baseUrl),
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
