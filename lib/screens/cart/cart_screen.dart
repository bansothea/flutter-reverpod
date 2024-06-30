import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_files/provider/product_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;


  @override
  Widget build(BuildContext context) {

    final cartProduct = ref.watch(reducedProductProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child:  Column(
          children: [
            Column(
              children: cartProduct.map((product)
                {
                  return Container(
                      padding:const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset(product.image, width: 60,height: 60,),
                          const SizedBox(width: 20,),
                          Text(product.title),
                          const Expanded(child: SizedBox(width: 10,)),
                          Text('\$${product.price}',
                            style: const  TextStyle(
                              color:Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                  );
                }).toList(), 
              // output cart products heret
            ),

            // output totals here
          ],
        ),
      ),
    );
  }
}