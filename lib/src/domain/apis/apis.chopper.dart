// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HotelService extends HotelService {
  _$HotelService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HotelService;

  @override
  Future<Response<HotelInfoModel>> hotelDetail() {
    final Uri $url = Uri.parse('/v3/d144777c-a67f-4e35-867a-cacc3b827473');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HotelInfoModel, HotelInfoModel>($request);
  }

  @override
  Future<Response<RoomsInfoModel>> roomsDetail() {
    final Uri $url = Uri.parse('/v3/8b532701-709e-4194-a41c-1a903af00195');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RoomsInfoModel, RoomsInfoModel>($request);
  }

  @override
  Future<Response<BookingHotelModel>> bookingHote() {
    final Uri $url = Uri.parse('/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingHotelModel, BookingHotelModel>($request);
  }
}
