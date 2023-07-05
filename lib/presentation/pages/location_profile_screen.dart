import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foyer_isar/application/string_to_color.dart';
import 'package:foyer_isar/domain/color_font/color_font.dart';
import 'package:foyer_isar/domain/color_font/providers.dart';
import 'package:foyer_isar/domain/locational_profile/providers.dart';
import 'package:foyer_isar/presentation/components/dialog_box_component.dart';
import 'package:foyer_isar/presentation/pages/saved_location_profile_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/bottom_sheet_component.dart';

class LocationProfileScreen extends HookConsumerWidget {
  const LocationProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latitude = useTextEditingController();
    final longitude = useTextEditingController();

    final ColorFont colorFont = ref.watch(colorFontEntityProvider);
    final Color color = ref.watch(getColorProvider(colorFont.themeColor));

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: GNav(
          tabs: [
            GButton(
              onPressed: () {
                print(colorFont);
              },
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SavedLocationProfileScreen()));
              },
              icon: Icons.save_rounded,
              text: 'Saved',
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            'Location Details',
            style: TextStyle(fontSize: colorFont.textSize),
          ),
          backgroundColor: color,
        ),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Font Size: ${colorFont.textSize}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[900]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Theme Color: ${color.toString()}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[900]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$'))
                    ],
                    controller: latitude,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Latitude',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
                      // Additional input formatter to enforce double value
                      FilteringTextInputFormatter.deny(
                          RegExp(r'^\.$')), // Disallow lone decimal point
                    ],
                    controller: longitude,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Longitude',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () async {
                      if (latitude.text.isEmpty || longitude.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogBoxComponent(
                              isEmptyInput: true,
                            );
                          },
                        );
                      } else if (double.parse(latitude.text) < -90 ||
                          double.parse(latitude.text) > 90 ||
                          double.parse(longitude.text) < -180 ||
                          double.parse(longitude.text) > 180) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogBoxComponent(
                              isEmptyInput: true,
                            );
                          },
                        );
                      } else if (await ref
                          .watch(locationProfileRepositoryProvider)
                          .isLocationalProfileExists(
                              double.parse(latitude.text),
                              double.parse(longitude.text))) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogBoxComponent(
                              isEmptyInput: false,
                            );
                          },
                        );
                      } else {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => MyBottomSheet(
                                double.parse(latitude.text),
                                double.parse(longitude.text)));
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color,
                      ),
                      child: Text(
                        'Add Location',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: colorFont.textSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
