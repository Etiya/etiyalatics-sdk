library etiyalatics_sdk;

import 'dart:async';

import 'package:etiyalatics_sdk/sdk_network/src/data_source/request/event/event_add_request.dart';
import 'package:etiyalatics_sdk/sdk_network/src/data_source/request/session/session_set_request.dart';
import 'package:etiyalatics_sdk/sdk_network/src/implementation/sdk_network_http_client_impl.dart';

export 'package:etiyalatics_sdk/sdk_network/src/data_source/request/event/event_add_request.dart';
export 'package:etiyalatics_sdk/sdk_network/src/data_source/request/session/session_set_request.dart';

export './etiyalatics_sdk.dart';
export './sdk_logger/sdk_logger.dart';
export './sdk_logger/sdk_logger_impl.dart';
export './sdk_network/sdk_network_http_api_client.dart';
export './sdk_network/src/data_source/request/event/event_add_request.dart';
export './sdk_network/src/data_source/request/session/session_set_request.dart';
export './sdk_network/src/implementation/sdk_network_http_client_impl.dart';

class Etiyalatics {
  Etiyalatics();

  SDKNetworkHttpApiClientImpl httpApiClient =
      SDKNetworkHttpApiClientImpl(baseUrl: 'http://127.0.0.1:8080/');

  FutureOr<bool> addEvent(EventAddRequest event) async =>
      httpApiClient.addEvent(event);

  FutureOr<bool> setSession(SessionSetRequest event) async =>
      httpApiClient.registerSession(event);
}
