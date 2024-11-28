import 'package:flutter/material.dart';
import '../Models/shoe.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    Shoe shoe = ModalRoute.of(context)?.settings.arguments as Shoe;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
         SizedBox(
            height: 400,
            child: Center(child: Image.asset(shoe.imagePath)),
          ),
          //name of product
          Container(
              margin:  const EdgeInsets.only(left: 50),
              child: Text(shoe.name,
                style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
              ),
          ),
          //colors option

          Column(
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 50),
                padding: EdgeInsets.only(top: 24),
                child: const Text("Colors",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:  EdgeInsets.only(left: 50,top: 12),
                height: 35,
                width: 35,
               decoration: BoxDecoration(
                 color: Colors.grey[400],
                 borderRadius: BorderRadius.circular(24),
               ),
              ),
              Container(
                margin:  EdgeInsets.only(left: 20,top: 12),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Container(
                margin:  EdgeInsets.only(left: 20,top: 12),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Container(
                margin:  EdgeInsets.only(left: 20,top: 12),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ],
          ),
          //size
          Container(
            margin: EdgeInsets.only(top: 24,left: 50),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Size",
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text("EU",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text("IND",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: Text("US",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50,top: 8),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('7.5',style: TextStyle(fontWeight: FontWeight.w600),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24,top: 8),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('8',style: TextStyle(fontWeight: FontWeight.w600),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24,top: 8),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('8.5',style: TextStyle(fontWeight: FontWeight.w600),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24,top: 8),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('9',style: TextStyle(fontWeight: FontWeight.w600),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24,top: 8),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('9.5',style: TextStyle(fontWeight: FontWeight.w600),)),
                ),
              ],
            ),
          ),
          // price and buy buttom
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 50,top: 32),
                padding: EdgeInsets.only(top: 24),
                child: Text('\$'+shoe.price,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                margin:  const EdgeInsets.only(right: 50,top: 56),
                padding: EdgeInsets.only(right:20,top: 12, bottom: 12,left: 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32)
                ),
                child: Text("Buy Now",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
