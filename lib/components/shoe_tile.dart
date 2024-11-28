import 'package:flutter/material.dart';
import 'package:shoeapp/Models/shoe.dart';
import 'package:shoeapp/pages/item_page.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   ShoeTile({super.key, required this.shoe, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.grey[300]
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemPage(),
              settings: RouteSettings(
                arguments: shoe,  // Passing the entire Person object
              ),
            ),
          );
        },
        child: Column(
          children: [
            //image
            Image.asset(shoe.imagePath),
            //decription
            Text(shoe.Description),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),
                      ),
                      const SizedBox(height: 2,),
                      Text('\$' + shoe.price),
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))
                      ),
                      child: const Icon(Icons.add,color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
