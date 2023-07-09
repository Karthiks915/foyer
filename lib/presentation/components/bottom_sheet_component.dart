import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:foyer_isar/application/string_to_color.dart';
import 'package:foyer_isar/domain/color_font/color_font.dart';
import 'package:foyer_isar/domain/color_font/providers.dart';
import 'package:foyer_isar/domain/locational_profile/locational_profile.dart';
import 'package:foyer_isar/domain/locational_profile/providers.dart';
import 'package:foyer_isar/presentation/components/dialog_box_component.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyBottomSheet extends HookConsumerWidget {
  final double latitude;
  final double longitude;

  const MyBottomSheet(this.latitude, this.longitude, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = useTextEditingController();
    final textSize = useTextEditingController();
    final ColorFont colorFont = ref.watch(colorFontEntityProvider);
    final Color color = ref.watch(getColorProvider(colorFont.themeColor));
    final List<ColorSwatch> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
    ];

    final selectedColor = useState<Color>(colors[0]);

    return GestureDetector(
      onTap: () {
        // Close the bottom sheet when tapped outside the content area
        Navigator.of(context).pop();
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 400, // Adjust the height as per your requirement
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: name,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: textSize,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$'))
                    ],
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Font Size',
                    ),
                  ),
                  const SizedBox(height: 16),
                  MaterialColorPicker(
                    onColorChange: (Color color) {
                      selectedColor.value = color;
                    },
                    selectedColor: selectedColor.value,
                    colors: colors,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (name.text.isEmpty || textSize.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const DialogBoxComponent(
                              isEmptyInput: true,
                            );
                          },
                        );
                      } else {
                        ref.watch(locationProfileRepositoryProvider).create(
                              LocationalProfile(
                                name: name.text,
                                themeColor: selectedColor.value.toString(),
                                textSize: double.parse(textSize.text),
                                latitude: latitude,
                                longitude: longitude,
                              ),
                            );

                        ref
                            .watch(colorFontEntityProvider.notifier)
                            .updateColorFont(selectedColor.value.toString(),
                                double.parse(textSize.text));

                        Navigator.of(context).pop();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: color, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(double.infinity,
                          48), // Full width with a height of 48
                    ),
                    child: const Text(
                      'Create Profile',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
