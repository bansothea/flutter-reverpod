
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  /// initial
  @override
  Set<Product> build() {
    // TODO: implement build
    return const {};
  }

  /// make Method to update the state
  void addproduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }

}

@riverpod
int cartTotal(ref){
  final cartProduct=ref.watch(cartNotifierProvider);
  int total=0;

  for(Product product in cartProduct){
   total+=product.price;

  }

  return total;
}


