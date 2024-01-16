import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hotel_task/src/data/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:hotel_task/src/data/models/hotel_detail/hotel_info_model.dart';
import 'package:hotel_task/src/data/models/room_info_model/rooms_info_model.dart';

part 'serializer.g.dart';

@SerializersFor([
  HotelInfoModel,
  AboutTheHotel,
  RoomsInfoModel,
  BookingHotelModel,
  Rooms,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
