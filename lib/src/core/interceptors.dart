import 'dart:async';

import 'package:chopper/chopper.dart';

import '../domain/services/connectivity.dart';
import 'exceptions.dart';

class NetworkInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivity = await ConnectivityX().create();

    if (!connectivity) {
      throw NetworkException();
    }
    return request;
  }
}

class BackendInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.statusCode >= 500) {
      throw BackendException();
    }
    return response;
  }
}
