import 'package:json_annotation/json_annotation.dart';

part 'session_set_request.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class SessionSetRequest {
  SessionSetRequest(
      {required this.brand,
      required this.model,
      required this.display,
      required this.version});

  factory SessionSetRequest.fromJson(Map<String, dynamic> json) =>
      _$SessionSetRequestFromJson(json);

  final String brand;
  final String model;
  final String display;
  final String version;

  Map<String, dynamic> toJson() => _$SessionSetRequestToJson(this);
}
