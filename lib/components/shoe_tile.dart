import 'package:flutter/material.dart';
import 'package:shoeapp/Models/shoe.dart';
import 'package:shoeapp/pages/item_page.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Getting screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(20),
      width: screenWidth * 0.8, // Set width to 80% of screen width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.grey[300],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemPage(),
              settings: RouteSettings(
                arguments: shoe, // Passing the entire Shoe object
              ),
            ),
          );
        },
        child: Column(
          children: [
            // Image with responsive size
            Image.asset(
              shoe.imagePath,
              width: screenWidth * 0.6, // Image width adjusted to screen width
              height: screenHeight * 0.2, // Image height based on screen height
              fit: BoxFit.contain,
            ),

            // Description with flexible space
            Text(
              shoe.Description,
              style: TextStyle(
                fontSize: screenWidth * 0.04, // Dynamic font size based on screen width
              ),
            ),
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
                      // Responsive Name and Price
                      Text(
                        shoe.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.05, // Dynamic font size
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '\$${shoe.price}',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04, // Dynamic font size
                        ),
                      ),
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
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
