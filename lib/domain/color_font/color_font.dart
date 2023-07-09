import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_font.freezed.dart';
part 'color_font.g.dart';

//Chosen to do it this way, but of course using theme extensions would be ideal, but that has a lot of boilerplate.

@freezed
class ColorFont with _$ColorFont {

  factory ColorFont({
    required String themeColor,
    required double textSize,
  }) = _ColorFont;

  factory ColorFont.fromJson(Map<String, dynamic> json) => _$ColorFontFromJson(json);
}