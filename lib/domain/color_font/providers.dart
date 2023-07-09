import 'package:foyer_isar/domain/color_font/color_font.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';


//Notifier class to handle state

@riverpod
class ColorFontEntity extends _$ColorFontEntity {
  @override
  ColorFont build() {
    return ColorFont(themeColor: '', textSize: 16.0);
  }

  void updateColorFont(String themeColor, double textSize) {
    state = ColorFont(themeColor: themeColor, textSize: textSize);
  }
}
