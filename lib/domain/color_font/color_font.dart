import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_font.freezed.dart';
part 'color_font.g.dart';

@freezed
class ColorFont with _$ColorFont {

  factory ColorFont({
    required String themeColor,
    required double textSize,
  }) = _ColorFont;

  factory ColorFont.fromJson(Map<String, dynamic> json) => _$ColorFontFromJson(json);
}