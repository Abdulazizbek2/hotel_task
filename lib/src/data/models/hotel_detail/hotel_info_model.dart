library hotel_info_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers/serializer.dart';

part 'hotel_info_model.g.dart';

abstract class HotelInfoModel
    implements Built<HotelInfoModel, HotelInfoModelBuilder> {
  HotelInfoModel._();

  factory HotelInfoModel([Function(HotelInfoModelBuilder b) updates]) =
      _$HotelInfoModel;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'adress')
  String get adress;
  @BuiltValueField(wireName: 'minimal_price')
  int get minimalPrice;
  @BuiltValueField(wireName: 'price_for_it')
  String get priceForIt;
  @BuiltValueField(wireName: 'rating')
  int get rating;
  @BuiltValueField(wireName: 'rating_name')
  String get ratingName;
  @BuiltValueField(wireName: 'image_urls')
  BuiltList<String> get imageUrls;
  @BuiltValueField(wireName: 'about_the_hotel')
  AboutTheHotel get aboutTheHotel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(HotelInfoModel.serializer, this));
  }

  static HotelInfoModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HotelInfoModel.serializer, json.decode(jsonString));
  }

  static Serializer<HotelInfoModel> get serializer =>
      _$hotelInfoModelSerializer;
}

abstract class AboutTheHotel
    implements Built<AboutTheHotel, AboutTheHotelBuilder> {
  AboutTheHotel._();

  factory AboutTheHotel([Function(AboutTheHotelBuilder b) updates]) =
      _$AboutTheHotel;

  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'peculiarities')
  BuiltList<String>? get peculiarities;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AboutTheHotel.serializer, this));
  }

  static AboutTheHotel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AboutTheHotel.serializer, json.decode(jsonString));
  }

  static Serializer<AboutTheHotel> get serializer => _$aboutTheHotelSerializer;
}
