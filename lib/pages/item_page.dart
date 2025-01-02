import 'package:flutter/material.dart';
import '../Models/shoe.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    Shoe shoe = ModalRoute.of(context)?.settings.arguments as Shoe;

    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView( // Ensure scrolling on small screens
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            SizedBox(
              height: screenHeight * 0.4, // Image takes 40% of screen height
              child: Center(child: Image.asset(shoe.imagePath, fit: BoxFit.contain)),
            ),

            // Name of product
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0.1), // 10% from left
              child: Text(
                shoe.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.08, // Font size based on screen width
                ),
              ),
            ),

            // Colors option header
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1, top: 24),
              child: const Text(
                "Colors",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),

            // Color options (row of color circles)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _colorOption(Colors.grey[400]),
                _colorOption(Colors.black),
                _colorOption(Colors.blueGrey),
                _colorOption(Colors.brown),
              ],
            ),

            // Size options header
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1, top: 24),
              child: const Text(
                "Size",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),

            // Size selection options
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _sizeOption("7.5"),
                _sizeOption("8"),
                _sizeOption("8.5"),
                _sizeOption("9"),
                _sizeOption("9.5"),
              ],
            ),

            // Price and buy button
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1, top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' + shoe.price,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.08, // Font size based on screen width
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Implement your buy action here
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
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

  // Helper widget for size options
  Widget _sizeOption(String size) {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 8),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // Helper widget for color options
  Widget _colorOption(Color? color) {
    return Container(
      margin: EdgeInsets.only(left: 50, top: 12),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}
