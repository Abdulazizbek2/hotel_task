library rooms_info_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers/serializer.dart';

part 'rooms_info_model.g.dart';

abstract class RoomsInfoModel
    implements Built<RoomsInfoModel, RoomsInfoModelBuilder> {
  RoomsInfoModel._();

  factory RoomsInfoModel([Function(RoomsInfoModelBuilder b) updates]) =
      _$RoomsInfoModel;

  @BuiltValueField(wireName: 'rooms')
  BuiltList<Rooms>? get rooms;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RoomsInfoModel.serializer, this));
  }

  static RoomsInfoModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RoomsInfoModel.serializer, json.decode(jsonString));
  }

  static Serializer<RoomsInfoModel> get serializer =>
      _$roomsInfoModelSerializer;
}

abstract class Rooms implements Built<Rooms, RoomsBuilder> {
  Rooms._();

  factory Rooms([Function(RoomsBuilder b) updates]) = _$Rooms;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'price')
  int? get price;
  @BuiltValueField(wireName: 'price_per')
  String? get pricePer;
  @BuiltValueField(wireName: 'peculiarities')
  BuiltList<String>? get peculiarities;
  @BuiltValueField(wireName: 'image_urls')
  BuiltList<String>? get imageUrls;
  String toJson() {
    return json.encode(serializers.serializeWith(Rooms.serializer, this));
  }

  static Rooms? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Rooms.serializer, json.decode(jsonString));
  }

  static Serializer<Rooms> get serializer => _$roomsSerializer;
}
