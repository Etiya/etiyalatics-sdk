import 'package:etiyalatics_sdk/sdk_network/src/data_source/request/event/event_add_request.dart';
import 'package:etiyalatics_sdk/sdk_network/src/data_source/request/session/session_set_request.dart';

abstract class SdkNetworkHttpApiClient {
  Future<bool> addEvent(EventAddRequest request);
  Future<bool> registerSession(SessionSetRequest request);
}
