import 'package:json_annotation/json_annotation.dart';

part 'event_add_request.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class EventAddRequest {
  EventAddRequest({
    required this.key,
    required this.filter,
    required this.userId,
  });

  factory EventAddRequest.fromJson(Map<String, dynamic> json) =>
      _$EventAddRequestFromJson(json);

  final String key;
  final String filter;
  final String userId;

  Map<String, dynamic> toJson() => _$EventAddRequestToJson(this);
}
