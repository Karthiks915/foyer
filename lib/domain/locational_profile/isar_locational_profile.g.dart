// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_locational_profile.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarLocationalProfileCollection on Isar {
  IsarCollection<IsarLocationalProfile> get isarLocationalProfiles =>
      this.collection();
}

const IsarLocationalProfileSchema = CollectionSchema(
  name: r'IsarLocationalProfile',
  id: -7633847246027959336,
  properties: {
    r'latitude': PropertySchema(
      id: 0,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 1,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'textSize': PropertySchema(
      id: 3,
      name: r'textSize',
      type: IsarType.double,
    ),
    r'themeColor': PropertySchema(
      id: 4,
      name: r'themeColor',
      type: IsarType.string,
    )
  },
  estimateSize: _isarLocationalProfileEstimateSize,
  serialize: _isarLocationalProfileSerialize,
  deserialize: _isarLocationalProfileDeserialize,
  deserializeProp: _isarLocationalProfileDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarLocationalProfileGetId,
  getLinks: _isarLocationalProfileGetLinks,
  attach: _isarLocationalProfileAttach,
  version: '3.1.0+1',
);

int _isarLocationalProfileEstimateSize(
  IsarLocationalProfile object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.themeColor.length * 3;
  return bytesCount;
}

void _isarLocationalProfileSerialize(
  IsarLocationalProfile object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.latitude);
  writer.writeDouble(offsets[1], object.longitude);
  writer.writeString(offsets[2], object.name);
  writer.writeDouble(offsets[3], object.textSize);
  writer.writeString(offsets[4], object.themeColor);
}

IsarLocationalProfile _isarLocationalProfileDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarLocationalProfile(
    latitude: reader.readDouble(offsets[0]),
    longitude: reader.readDouble(offsets[1]),
    name: reader.readString(offsets[2]),
    textSize: reader.readDouble(offsets[3]),
    themeColor: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _isarLocationalProfileDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarLocationalProfileGetId(IsarLocationalProfile object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarLocationalProfileGetLinks(
    IsarLocationalProfile object) {
  return [];
}

void _isarLocationalProfileAttach(
    IsarCollection<dynamic> col, Id id, IsarLocationalProfile object) {
  object.id = id;
}

extension IsarLocationalProfileQueryWhereSort
    on QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QWhere> {
  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarLocationalProfileQueryWhere on QueryBuilder<IsarLocationalProfile,
    IsarLocationalProfile, QWhereClause> {
  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarLocationalProfileQueryFilter on QueryBuilder<
    IsarLocationalProfile, IsarLocationalProfile, QFilterCondition> {
  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> latitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> latitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> latitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> latitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> longitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> longitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> longitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> longitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> textSizeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> textSizeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> textSizeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> textSizeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'themeColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'themeColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
          QAfterFilterCondition>
      themeColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'themeColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
          QAfterFilterCondition>
      themeColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'themeColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile,
      QAfterFilterCondition> themeColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'themeColor',
        value: '',
      ));
    });
  }
}

extension IsarLocationalProfileQueryObject on QueryBuilder<
    IsarLocationalProfile, IsarLocationalProfile, QFilterCondition> {}

extension IsarLocationalProfileQueryLinks on QueryBuilder<IsarLocationalProfile,
    IsarLocationalProfile, QFilterCondition> {}

extension IsarLocationalProfileQuerySortBy
    on QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QSortBy> {
  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByTextSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textSize', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByTextSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textSize', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByThemeColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeColor', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      sortByThemeColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeColor', Sort.desc);
    });
  }
}

extension IsarLocationalProfileQuerySortThenBy
    on QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QSortThenBy> {
  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByTextSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textSize', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByTextSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textSize', Sort.desc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByThemeColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeColor', Sort.asc);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QAfterSortBy>
      thenByThemeColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeColor', Sort.desc);
    });
  }
}

extension IsarLocationalProfileQueryWhereDistinct
    on QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QDistinct> {
  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QDistinct>
      distinctByTextSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textSize');
    });
  }

  QueryBuilder<IsarLocationalProfile, IsarLocationalProfile, QDistinct>
      distinctByThemeColor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeColor', caseSensitive: caseSensitive);
    });
  }
}

extension IsarLocationalProfileQueryProperty on QueryBuilder<
    IsarLocationalProfile, IsarLocationalProfile, QQueryProperty> {
  QueryBuilder<IsarLocationalProfile, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarLocationalProfile, double, QQueryOperations>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<IsarLocationalProfile, double, QQueryOperations>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<IsarLocationalProfile, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<IsarLocationalProfile, double, QQueryOperations>
      textSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textSize');
    });
  }

  QueryBuilder<IsarLocationalProfile, String, QQueryOperations>
      themeColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeColor');
    });
  }
}
