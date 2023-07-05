// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locational_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationalProfile _$$_LocationalProfileFromJson(Map<String, dynamic> json) =>
    _$_LocationalProfile(
      id: json['id'] as int?,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      themeColor: json['themeColor'] as String,
      textSize: (json['textSize'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationalProfileToJson(
        _$_LocationalProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'themeColor': instance.themeColor,
      'textSize': instance.textSize,
    };
