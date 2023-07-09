import 'package:flutter/material.dart';
import 'package:foyer_isar/presentation/pages/location_profile_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: Consumer(
    builder: (((context, ref, child) {
      final states = [

        //This is where you would load up all your providers before the app starts. This way you are certain
        //that all the providers like repositories and databases are loaded up and have no errors.
        //The app did not require it, So I opened the database when I initialized the repository, but opening it here
        //with the help of a provider would be better.

      ];

      //If all the states are AsyncData, then we can start the app.
      
      if (states.every((state) => state is AsyncData)) {
        return const MaterialApp(home: LocationProfileScreen());
      }

      if (states.any((state) => state is AsyncError)) {

        //Right now this is just a print statement, but you could have a widget that shows the error

        print(AsyncError);
      }
      
      //If not, of course we just use a loading indicator.
      return const Center(child: CircularProgressIndicator());
    })),
  )));
}

//The main app, this does nothing at the moment because this is a simple app, but
//you would ideally want to use ThemeData and extensions to change the themes.
//Using Themeextensions you can abstract away the raw styling code into the infrastructure layer.
class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Location Profile Entry',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      home: const LocationProfileScreen(),
    );
  }
}
