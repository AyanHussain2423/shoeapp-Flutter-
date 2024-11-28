import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/Models/cart.dart';
import 'package:shoeapp/Models/shoe.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoetoCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Succesfully Added"),
      content: Text("Check Your cart"),
     )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>
        Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search"),
                  Icon(Icons.search)
                ],
              ),
            ),
            const Text("everyone flies but some fly Higher!",style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600
            ),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 24,top: 24,right: 8),
                  child: const Text("Hot Picks",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 31,right: 34),
                  child: Text("see all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                Shoe shoes = value.getShoeList()[index];
                return ShoeTile(shoe: shoes,
                    onTap: (){
                  addShoetoCart(shoes);
                }
                );
              },
            ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: Divider(
                color: Colors.white24,
              ),
            )
          ],
        )
    );
  }
}
