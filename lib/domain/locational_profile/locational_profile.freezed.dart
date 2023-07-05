// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locational_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationalProfile _$LocationalProfileFromJson(Map<String, dynamic> json) {
  return _LocationalProfile.fromJson(json);
}

/// @nodoc
mixin _$LocationalProfile {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get themeColor => throw _privateConstructorUsedError;
  double get textSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationalProfileCopyWith<LocationalProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationalProfileCopyWith<$Res> {
  factory $LocationalProfileCopyWith(
          LocationalProfile value, $Res Function(LocationalProfile) then) =
      _$LocationalProfileCopyWithImpl<$Res, LocationalProfile>;
  @useResult
  $Res call(
      {int? id,
      String name,
      double latitude,
      double longitude,
      String themeColor,
      double textSize});
}

/// @nodoc
class _$LocationalProfileCopyWithImpl<$Res, $Val extends LocationalProfile>
    implements $LocationalProfileCopyWith<$Res> {
  _$LocationalProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? themeColor = null,
    Object? textSize = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as String,
      textSize: null == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationalProfileCopyWith<$Res>
    implements $LocationalProfileCopyWith<$Res> {
  factory _$$_LocationalProfileCopyWith(_$_LocationalProfile value,
          $Res Function(_$_LocationalProfile) then) =
      __$$_LocationalProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      double latitude,
      double longitude,
      String themeColor,
      double textSize});
}

/// @nodoc
class __$$_LocationalProfileCopyWithImpl<$Res>
    extends _$LocationalProfileCopyWithImpl<$Res, _$_LocationalProfile>
    implements _$$_LocationalProfileCopyWith<$Res> {
  __$$_LocationalProfileCopyWithImpl(
      _$_LocationalProfile _value, $Res Function(_$_LocationalProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? themeColor = null,
    Object? textSize = null,
  }) {
    return _then(_$_LocationalProfile(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as String,
      textSize: null == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationalProfile implements _LocationalProfile {
  _$_LocationalProfile(
      {this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.themeColor,
      required this.textSize});

  factory _$_LocationalProfile.fromJson(Map<String, dynamic> json) =>
      _$$_LocationalProfileFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String themeColor;
  @override
  final double textSize;

  @override
  String toString() {
    return 'LocationalProfile(id: $id, name: $name, latitude: $latitude, longitude: $longitude, themeColor: $themeColor, textSize: $textSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationalProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, latitude, longitude, themeColor, textSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationalProfileCopyWith<_$_LocationalProfile> get copyWith =>
      __$$_LocationalProfileCopyWithImpl<_$_LocationalProfile>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationalProfileToJson(
      this,
    );
  }
}

abstract class _LocationalProfile implements LocationalProfile {
  factory _LocationalProfile(
      {final int? id,
      required final String name,
      required final double latitude,
      required final double longitude,
      required final String themeColor,
      required final double textSize}) = _$_LocationalProfile;

  factory _LocationalProfile.fromJson(Map<String, dynamic> json) =
      _$_LocationalProfile.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get themeColor;
  @override
  double get textSize;
  @override
  @JsonKey(ignore: true)
  _$$_LocationalProfileCopyWith<_$_LocationalProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
