import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/Models/cart.dart';
import 'package:shoeapp/Models/shoe.dart';

import '../components/cart_item.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>
        Column(
          children: [
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 24),
               child: const Text("My Cart",
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 32,
                   fontWeight: FontWeight.bold,
                ),
               ),
            ),
            Expanded(
                child: ListView.builder(itemCount: value.getUserCart().length,
                    itemBuilder: (context,index)
                {
                 Shoe indishoe = value.getUserCart()[index];
                 return CartItem(shoe: indishoe,);
                }
                ),
            ),
          ],
        )
    );
  }
}