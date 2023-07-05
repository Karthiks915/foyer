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
        //Upgrade to switch expression/exhaustive checking

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
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ref
                                .watch(getColorProvider(location.themeColor)),
                            radius: 20,
                          ),
                          title: Text(
                            location.name,
                          ),
                          subtitle: Text('Text Size: ${location.textSize}'),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              ref
                                  .watch(locationProfileRepositoryProvider)
                                  .delete(location.id);
                            },
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
            error: (error, stack) => Text(error.toString()),
            loading: () => CircularProgressIndicator()),
      ),
    );
  }
}
