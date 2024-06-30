// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productHash() => r'14c91562f7f11e93fb180f663b3d4b297e58a1ef';

///Generate provider
///
/// Copied from [product].
@ProviderFor(product)
final productProvider = AutoDisposeProvider<List<Product>>.internal(
  product,
  name: r'productProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductRef = AutoDisposeProviderRef<List<Product>>;
String _$reducedProductHash() => r'2030bdee953c3b184d06587df8239661cb72dc81';

/// See also [reducedProduct].
@ProviderFor(reducedProduct)
final reducedProductProvider = AutoDisposeProvider<List<Product>>.internal(
  reducedProduct,
  name: r'reducedProductProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reducedProductHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReducedProductRef = AutoDisposeProviderRef<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
