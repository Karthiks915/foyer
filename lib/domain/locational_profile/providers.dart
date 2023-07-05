import 'package:foyer_isar/domain/locational_profile/interfaces.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
LocationProfilesRepository locationProfileRepository(
    LocationProfileRepositoryRef ref) {
  return IsarLocationProfilesRepository();
}


@riverpod
Stream<List> getAllLocationProfile(GetAllLocationProfileRef ref) {
  return ref
      .watch(locationProfileRepositoryProvider)
      .getLocationalProfileListStream();
}

