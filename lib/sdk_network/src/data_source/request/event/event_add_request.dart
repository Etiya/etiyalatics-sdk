// To parse this JSON data, do
//
//     final eventAddRequest = eventAddRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_add_request.freezed.dart';
part 'event_add_request.g.dart';

EventAddRequest eventAddRequestFromJson(String str) =>
    EventAddRequest.fromJson(json.decode(str));

String eventAddRequestToJson(EventAddRequest data) =>
    json.encode(data.toJson());

@freezed
class EventAddRequest with _$EventAddRequest {
  const factory EventAddRequest({
    String? eventName,
    int? custId,
    String? action,
    String? elementTarget,
    String? elementId,
    String? elementClass,
    String? value,
    String? page,
    String? device,
    String? scrollDepth,
    int? isLogin,
    String? sessionDuration,
  }) = _EventAddRequest;

  factory EventAddRequest.fromJson(Map<String, dynamic> json) =>
      _$EventAddRequestFromJson(json);
}
