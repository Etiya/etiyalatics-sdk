import 'dart:async';
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:etiyalatics_sdk/sdk_network/sdk_network_http_api_client.dart';
import 'package:etiyalatics_sdk/sdk_network/src/data_source/request/event/event_add_request.dart';
import 'package:etiyalatics_sdk/sdk_network/src/data_source/request/session/session_set_request.dart';

class SDKNetworkHttpApiClientImpl implements SdkNetworkHttpApiClient {
  SDKNetworkHttpApiClientImpl({
    required this.baseUrl,
    Dio? dio,
  }) : _dio = dio ?? Dio() {
    if (dio == null) {
      _dio.options.connectTimeout = 30000;
      _dio.options.receiveTimeout = 30000;
    }
  }

  final addEventEndPoint = "addEvent";
  final setSession = "registerDevice";
  final Dio _dio;

  final String baseUrl;
  @override
  Future<bool> addEvent(EventAddRequest request) async {
    final response = await _post(
      '$baseUrl$addEventEndPoint',
      request,
    );
    if (response.statusCode == HttpStatus.accepted) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> registerSession(SessionSetRequest request) async {
    final response = await _post(
      '$baseUrl$setSession',
      request,
    );
    if (response.statusCode == HttpStatus.accepted) {
      return true;
    } else {
      return false;
    }
  }

  Future<Response> _post(
    String method,
    dynamic data, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.post(
        method,
        queryParameters: query,
        data: data,
        options: Options(headers: headers),
      );

      return response;
    } on DioError catch (e, stackTrace) {
      _onError(e, stackTrace);

      rethrow;
    } catch (e, stackTrace) {
      _onError(e, stackTrace);

      rethrow;
    }
  }

  void _onError(error, stackTrace) {}
}
