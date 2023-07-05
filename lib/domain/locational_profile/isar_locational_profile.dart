import 'package:isar/isar.dart';

part 'isar_locational_profile.g.dart';

@Collection()
class IsarLocationalProfile {

  @Index()
  Id? id;

  String name;

  double latitude;

  double longitude;

  String themeColor;

  double textSize;

  IsarLocationalProfile({
    required this.name,
    required this.latitude, 
    required this.longitude,
    required this.themeColor,
    required this.textSize
  });
}
