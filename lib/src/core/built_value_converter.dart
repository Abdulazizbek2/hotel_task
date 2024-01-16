import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';
import 'package:hotel_task/src/data/serializers/serializer.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) => super.convertRequest(
        request.copyWith(
          body: serializers.serializeWith(
            serializers.serializerForType(request.body.runtimeType)!,
            request.body,
          ),
        ),
      );

  @override
  Future<Response<BodyType>> convertResponse<BodyType, T>(
    Response response,
  ) async {
    late Response response0;
    if (response.bodyString.isEmpty) {
      response0 = Response(response.base, '{"message":"Success"}');
    } else {
      response0 = response;
    }
    final dynamicResponse = await super.convertResponse(response0);
    final customBody = _convertToObject<T>(dynamicResponse.body) as BodyType;
    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToObject<T>(element) {
    if (element is T) {
      return element;
    }
    if (element is List) {
      return _deserializeListOf<T>(element);
    }
    return _deserialize<T>(element as Map<String, dynamic>);
  }

  BuiltList<T> _deserializeListOf<T>(List dynamicList) => BuiltList<T>(
        dynamicList.map(
          (element) => _deserialize<T>(element as Map<String, dynamic>),
        ),
      );

  T _deserialize<T>(Map<String, dynamic> value) => serializers.deserializeWith(
        serializers.serializerForType(T) as Serializer<T>,
        value,
      )!;
}

class ErrorMyConverter implements ErrorConverter {
  @override
  FutureOr<Response> convertError<Detail, PaymentResult>(Response response) {
    var body = response.body;
    if (body.toString().length > 200) {
      throw UnimplementedError(
          body.toString().substring(0, 198).replaceAll("\n", " "));
    } else {
      if (body.toString().contains("\"message\":")) {
        Map<String, dynamic> res = jsonDecode(body.toString());
        throw UnimplementedError(res['message']);
      } else {
        throw UnimplementedError(body.toString().replaceAll("\n", " "));
      }
    }
  }
}
