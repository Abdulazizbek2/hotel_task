library booking_hotel_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers/serializer.dart';

part 'booking_hotel_model.g.dart';

abstract class BookingHotelModel
    implements Built<BookingHotelModel, BookingHotelModelBuilder> {
  BookingHotelModel._();

  factory BookingHotelModel([Function(BookingHotelModelBuilder b) updates]) =
      _$BookingHotelModel;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'hotel_name')
  String? get hotelName;
  @BuiltValueField(wireName: 'hotel_adress')
  String? get hotelAdress;
  @BuiltValueField(wireName: 'horating')
  int? get horating;
  @BuiltValueField(wireName: 'rating_name')
  String? get ratingName;
  @BuiltValueField(wireName: 'departure')
  String? get departure;
  @BuiltValueField(wireName: 'arrival_country')
  String? get arrivalCountry;
  @BuiltValueField(wireName: 'tour_date_start')
  String? get tourDateStart;
  @BuiltValueField(wireName: 'tour_date_stop')
  String? get tourDateStop;
  @BuiltValueField(wireName: 'number_of_nights')
  int? get numberOfNights;
  @BuiltValueField(wireName: 'room')
  String? get room;
  @BuiltValueField(wireName: 'nutrition')
  String? get nutrition;
  @BuiltValueField(wireName: 'tour_price')
  int? get tourPrice;
  @BuiltValueField(wireName: 'fuel_charge')
  int? get fuelCharge;
  @BuiltValueField(wireName: 'service_charge')
  int? get serviceCharge;
  String toJson() {
    return json
        .encode(serializers.serializeWith(BookingHotelModel.serializer, this));
  }

  static BookingHotelModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BookingHotelModel.serializer, json.decode(jsonString));
  }

  static Serializer<BookingHotelModel> get serializer =>
      _$bookingHotelModelSerializer;
}
