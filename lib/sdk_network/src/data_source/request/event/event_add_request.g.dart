// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventAddRequest _$$_EventAddRequestFromJson(Map<String, dynamic> json) =>
    _$_EventAddRequest(
      eventName: json['eventName'] as String?,
      custId: json['custId'] as int?,
      action: json['action'] as String?,
      elementTarget: json['elementTarget'] as String?,
      elementId: json['elementId'] as String?,
      elementClass: json['elementClass'] as String?,
      value: json['value'] as String?,
      page: json['page'] as String?,
      device: json['device'] as String?,
      scrollDepth: json['scrollDepth'] as String?,
      isLogin: json['isLogin'] as int?,
      sessionDuration: json['sessionDuration'] as String?,
    );

Map<String, dynamic> _$$_EventAddRequestToJson(_$_EventAddRequest instance) =>
    <String, dynamic>{
      'eventName': instance.eventName,
      'custId': instance.custId,
      'action': instance.action,
      'elementTarget': instance.elementTarget,
      'elementId': instance.elementId,
      'elementClass': instance.elementClass,
      'value': instance.value,
      'page': instance.page,
      'device': instance.device,
      'scrollDepth': instance.scrollDepth,
      'isLogin': instance.isLogin,
      'sessionDuration': instance.sessionDuration,
    };
