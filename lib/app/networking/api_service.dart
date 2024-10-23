import 'package:flutter/material.dart';
import 'package:flutter_app/config/decoders.dart';
import '/app/networking/dio/interceptors/logging_interceptor.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* ApiService
|--------------------------------------------------------------------------
| Define your API endpoints
| Learn more https://nylo.dev/docs/5.20.0/networking
|-------------------------------------------------------------------------- */

class ApiService extends NyApiService {
  ApiService({BuildContext? buildContext}) : super(buildContext, decoders: modelDecoders);

  @override
  String get baseUrl => getEnv('API_BASE_URL');

  @override
  final interceptors = {LoggingInterceptor: LoggingInterceptor()};

  Future<dynamic> fetchTestData() async {
    return await network(
      request: (request) => request.get("/endpoint-path"),
    );
  }
}
