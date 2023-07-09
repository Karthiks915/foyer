import 'package:flutter/material.dart';
import 'package:foyer_isar/application/string_to_color.dart';
import 'package:foyer_isar/domain/color_font/color_font.dart';
import 'package:foyer_isar/domain/color_font/providers.dart';
import 'package:foyer_isar/domain/locational_profile/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SavedLocationProfileScreen extends ConsumerWidget {
  const SavedLocationProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref.watch(getAllLocationProfileProvider);

    final ColorFont colorFont = ref.watch(colorFontEntityProvider);
    final Color color = ref.watch(getColorProvider(colorFont.themeColor));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Saved Location Profile'),
      ),
      body: SafeArea(

        //Upgrade to switch expression/exhaustive checking if necessary

        child: locations.when(
            data: (locations) {
              return ListView(
                children: [
                  for (final location in locations)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          //Change Theme using a provider when tapped
                          ref
                              .watch(colorFontEntityProvider.notifier)
                              .updateColorFont(
                                location.themeColor,
                                location.textSize,
                              );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Material(
                            elevation: 0.6,
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: ref.watch(
                                      getColorProvider(location.themeColor)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              title: Text(
                                location.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Text('Text Size: ${location.textSize}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                  )),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  ref
                                      .watch(locationProfileRepositoryProvider)
                                      .delete(location.id);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
            error: (error, stack) => Text(error.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
