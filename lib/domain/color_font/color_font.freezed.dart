// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_font.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorFont _$ColorFontFromJson(Map<String, dynamic> json) {
  return _ColorFont.fromJson(json);
}

/// @nodoc
mixin _$ColorFont {
  String get themeColor => throw _privateConstructorUsedError;
  double get textSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorFontCopyWith<ColorFont> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorFontCopyWith<$Res> {
  factory $ColorFontCopyWith(ColorFont value, $Res Function(ColorFont) then) =
      _$ColorFontCopyWithImpl<$Res, ColorFont>;
  @useResult
  $Res call({String themeColor, double textSize});
}

/// @nodoc
class _$ColorFontCopyWithImpl<$Res, $Val extends ColorFont>
    implements $ColorFontCopyWith<$Res> {
  _$ColorFontCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeColor = null,
    Object? textSize = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ColorFontCopyWith<$Res> implements $ColorFontCopyWith<$Res> {
  factory _$$_ColorFontCopyWith(
          _$_ColorFont value, $Res Function(_$_ColorFont) then) =
      __$$_ColorFontCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String themeColor, double textSize});
}

/// @nodoc
class __$$_ColorFontCopyWithImpl<$Res>
    extends _$ColorFontCopyWithImpl<$Res, _$_ColorFont>
    implements _$$_ColorFontCopyWith<$Res> {
  __$$_ColorFontCopyWithImpl(
      _$_ColorFont _value, $Res Function(_$_ColorFont) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeColor = null,
    Object? textSize = null,
  }) {
    return _then(_$_ColorFont(
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
class _$_ColorFont implements _ColorFont {
  _$_ColorFont({required this.themeColor, required this.textSize});

  factory _$_ColorFont.fromJson(Map<String, dynamic> json) =>
      _$$_ColorFontFromJson(json);

  @override
  final String themeColor;
  @override
  final double textSize;

  @override
  String toString() {
    return 'ColorFont(themeColor: $themeColor, textSize: $textSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorFont &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeColor, textSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorFontCopyWith<_$_ColorFont> get copyWith =>
      __$$_ColorFontCopyWithImpl<_$_ColorFont>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorFontToJson(
      this,
    );
  }
}

abstract class _ColorFont implements ColorFont {
  factory _ColorFont(
      {required final String themeColor,
      required final double textSize}) = _$_ColorFont;

  factory _ColorFont.fromJson(Map<String, dynamic> json) =
      _$_ColorFont.fromJson;

  @override
  String get themeColor;
  @override
  double get textSize;
  @override
  @JsonKey(ignore: true)
  _$$_ColorFontCopyWith<_$_ColorFont> get copyWith =>
      throw _privateConstructorUsedError;
}
