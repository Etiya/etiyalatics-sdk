// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_set_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionSetRequest _$SessionSetRequestFromJson(Map json) => SessionSetRequest(
      brand: json['brand'] as String,
      model: json['model'] as String,
      display: json['display'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$SessionSetRequestToJson(SessionSetRequest instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'model': instance.model,
      'display': instance.display,
      'version': instance.version,
    };
