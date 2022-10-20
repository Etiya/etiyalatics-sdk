library Etiyalytics_sdk;

import 'dart:async';

import 'package:Etiyalytics_sdk/sdk_network/src/data_source/request/event/event_add_request.dart';
import 'package:Etiyalytics_sdk/sdk_network/src/implementation/sdk_network_http_client_impl.dart';

export './sdk_network/sdk_network_http_api_client.dart';
export './sdk_network/src/data_source/request/event/event_add_request.dart';
export './sdk_network/src/data_source/request/session/session_set_request.dart';
export './sdk_network/src/implementation/sdk_network_http_client_impl.dart';

class Etiyalytics {
  Etiyalytics();

  static FutureOr<bool> addEvent(EventAddRequest event) async {
    SDKNetworkHttpApiClientImpl httpApiClient = SDKNetworkHttpApiClientImpl(
        baseUrl: 'https://etiya-event-listener.fireflow.ai/');
    return httpApiClient.addEvent(event);
  }
}
