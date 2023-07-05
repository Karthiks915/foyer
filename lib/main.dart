import 'package:flutter/material.dart';
import 'package:foyer_isar/presentation/pages/location_profile_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: Consumer(
    builder: (((context, ref, child) {
      final states = [
        

      ];

      if (states.every((state) => state is AsyncData)) {
        return const MaterialApp(home: LocationProfileScreen());
      }

      if (states.any((state) => state is AsyncError)) {
        print(AsyncError);
      }

      return const Center(child: CircularProgressIndicator());
    })),
  )));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Location Profile Entry',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16, // Specify your desired font size
          ),
        ),
      ),
      home: LocationProfileScreen(),
    );
  }
}
