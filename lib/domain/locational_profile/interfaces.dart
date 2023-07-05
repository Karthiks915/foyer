import 'package:foyer_isar/domain/locational_profile/isar_locational_profile.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'locational_profile.dart';

abstract class LocationProfilesRepository {
  Stream<List<LocationalProfile>> getLocationalProfileListStream();
  Stream<LocationalProfile> getLocationProfileStream(String locationProfileId);
  Future<void> create(LocationalProfile newLocationProfile);
  void update(LocationalProfile locationProfile);
  Future<void> delete(int locationalProfileID);
  Future<bool> isLocationalProfileExists(double latitude, double longitude);
}

class IsarLocationProfilesRepository implements LocationProfilesRepository {
  late Future<Isar> db;

  IsarLocationProfilesRepository() {
    db = openDb();
  }

  Future<bool> isLocationalProfileExists(
      double latitude, double longitude) async {
    final _isar = await db;

    final existingProfile = await _isar.isarLocationalProfiles
        .where()
        .filter()
        .latitudeEqualTo(latitude)
        .longitudeEqualTo(longitude)
        .findFirst();

    return existingProfile != null;
  }

  //Check to not let user create a profile with same themeColor and text

  //   Future<bool> isProfileExists(
  //     String themeColor, double textSize) async {
  //   final _isar = await db;

  //   final existingProfile = await _isar.isarLocationalProfiles
  //       .where()
  //       .filter()
  //       .themeColorEqualTo(themeColor)
  //       .textSizeEqualTo(textSize)
  //       .findFirst();

  //   return existingProfile != null;
  // }

  @override
  Future<void> create(LocationalProfile locationProfile) async {
    // TODO: implement create
    final _isar = await db;

    final isarLocationalProfile = IsarLocationalProfile(
        name: locationProfile.name,
        latitude: locationProfile.latitude,
        longitude: locationProfile.longitude,
        themeColor: locationProfile.themeColor,
        textSize: locationProfile.textSize);

    _isar.writeTxn<int>(
        () => _isar.isarLocationalProfiles.put(isarLocationalProfile));
  }

  @override
  Future<void> delete(int locationalProfileID) async {
    final isar = await db;
    isar.writeTxn(() async {
      await isar.isarLocationalProfiles.delete(locationalProfileID);
    });
  }

  @override
  Stream<LocationalProfile> getLocationProfileStream(String locationProfileId) {
    // TODO: implement getLocationProfileStream
    throw UnimplementedError();
  }

  @override
  Stream<List<LocationalProfile>> getLocationalProfileListStream() async* {
    final _isar = await db;
    yield* _isar.isarLocationalProfiles
        .where()
        .watch(fireImmediately: true)
        .map((locationalsProfile) => locationalsProfile
            .map((isarLocationalProfile) => LocationalProfile(
                id: isarLocationalProfile.id,
                name: isarLocationalProfile.name,
                latitude: isarLocationalProfile.latitude,
                longitude: isarLocationalProfile.longitude,
                themeColor: isarLocationalProfile.themeColor,
                textSize: isarLocationalProfile.textSize))
            .toList());
  }

  @override
  void update(LocationalProfile locationProfile) {
    // TODO: implement update
    throw UnimplementedError();
  }

  Future<Isar> openDb() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [IsarLocationalProfileSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
