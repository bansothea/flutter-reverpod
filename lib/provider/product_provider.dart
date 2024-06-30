
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProduct =[ 
Product(id: '1', title: "backpack", price: 12, image: 'assets/products/backpack.png'),
Product(id: '2', title: "Drum", price: 24, image: 'assets/products/drum.png'),
Product(id: '3', title: 'Guitar', price: 34, image: 'assets/products/guitar.png'),
Product(id: '4', title: 'Jeans', price: 14, image: 'assets/products/jeans.png'),
Product(id: '5', title: 'karati', price: 74, image: 'assets/products/karati.png'),
Product(id: '6', title: 'short', price: 17, image: 'assets/products/shorts.png'),
Product(id: '7', title: 'skates', price: 10, image: 'assets/products/skates.png'),
Product(id: '8', title: 'suitcase', price: 70, image: 'assets/products/suitcase.png'),

];


final ProductProvider = Provider((ref) {
  return allProduct;
},);

final reducedProduct = Provider((ref) {
  return allProduct.where((p)=> p.price <70);

},);
