import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    //I am using hooks to get the controllers for the text fields, helps with readability and no need to dispose.
    final latitude = useTextEditingController();
    final longitude = useTextEditingController();

    final ColorFont colorFont = ref.watch(colorFontEntityProvider);
    final Color color = ref.watch(getColorProvider(colorFont.themeColor));

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: GNav(
          tabs: [
            GButton(
              onPressed: () {},
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SavedLocationProfileScreen()));
              },
              icon: Icons.save_rounded,
              text: 'Saved',
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            'F O Y E R',
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
                const Text(
                  'W E L C O M E',
                  style: TextStyle(fontSize: 30),
                ).animate().fadeIn().moveY(),
                const SizedBox(
                  height: 250,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Font Size: ${colorFont.textSize}')
                        .animate()
                        .fadeIn()
                        .moveX(),
                    const VerticalDivider(
                      color: Colors.black,
                      thickness: 20,
                    ),
                    Text(
                      'Color: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[900],
                      ),
                    ).animate().fadeIn().moveX(),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ).animate().fadeIn().moveX(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 180),
                  child: Divider(
                    thickness: 2,
                  ),
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
                 
                      FilteringTextInputFormatter.deny(
                          RegExp(r'^\.$')), 
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
                  child: ElevatedButton(
                    onPressed: () async {
                      if (latitude.text.isEmpty || longitude.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const DialogBoxComponent(
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
                            return const DialogBoxComponent(
                              isEmptyInput: true,
                            );
                          },
                        );
                      } //Used an await here since this is a small app, but ideally it's better to
                      //load up the database as soon as the app loads, that way you don't have to
                      //handle code asynchronously.
                      
                      else if (await ref
                          .watch(locationProfileRepositoryProvider)
                          .isLocationalProfileExists(
                              double.parse(latitude.text),
                              double.parse(longitude.text))) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const DialogBoxComponent(
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
                    child: const Text('Add Location',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
