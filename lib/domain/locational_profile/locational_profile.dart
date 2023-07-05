import 'package:freezed_annotation/freezed_annotation.dart';

part 'locational_profile.freezed.dart';
part 'locational_profile.g.dart';

@freezed
class LocationalProfile with _$LocationalProfile {
  factory LocationalProfile({
    int? id,
    required String name,
    required double latitude,
    required double longitude,
    required String themeColor,
    required double textSize,
  }) = _LocationalProfile;

  factory LocationalProfile.fromJson(Map<String, dynamic> json) =>
      _$LocationalProfileFromJson(json);
}
