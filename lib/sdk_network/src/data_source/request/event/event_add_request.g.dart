// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventAddRequest _$EventAddRequestFromJson(Map json) => EventAddRequest(
      key: json['key'] as String,
      filter: json['filter'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$EventAddRequestToJson(EventAddRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'filter': instance.filter,
      'userId': instance.userId,
    };
