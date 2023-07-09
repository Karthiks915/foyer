// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_to_color.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getColorHash() => r'1e7c9f1fb16c510f24cd12cc45ae8a65f853c82a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetColorRef = AutoDisposeProviderRef<Color>;

/// See also [getColor].
@ProviderFor(getColor)
const getColorProvider = GetColorFamily();

/// See also [getColor].
class GetColorFamily extends Family<Color> {
  /// See also [getColor].
  const GetColorFamily();

  /// See also [getColor].
  GetColorProvider call(
    String colorString,
  ) {
    return GetColorProvider(
      colorString,
    );
  }

  @override
  GetColorProvider getProviderOverride(
    covariant GetColorProvider provider,
  ) {
    return call(
      provider.colorString,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getColorProvider';
}

/// See also [getColor].
class GetColorProvider extends AutoDisposeProvider<Color> {
  /// See also [getColor].
  GetColorProvider(
    this.colorString,
  ) : super.internal(
          (ref) => getColor(
            ref,
            colorString,
          ),
          from: getColorProvider,
          name: r'getColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getColorHash,
          dependencies: GetColorFamily._dependencies,
          allTransitiveDependencies: GetColorFamily._allTransitiveDependencies,
        );

  final String colorString;

  @override
  bool operator ==(Object other) {
    return other is GetColorProvider && other.colorString == colorString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, colorString.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
