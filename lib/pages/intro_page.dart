import 'package:flutter/material.dart';
import 'package:shoeapp/pages/Home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Image.asset('lib/images/intropant.png',
                  height: 350,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text("Let's Start Workin!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4,left: 8,right: 8),
              child: Text("With every run,your potential grows—lace up and rise!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 13
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12,right: 12),
              child: Text("Step into your best self,"
                  "one stride at a time.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 13
              ),
              ),
            ),
            const SizedBox(height: 160),
            GestureDetector(
              onTap: (){
                Navigator.
                push(context,MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(21),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Shop Now",style: TextStyle(color: Colors.white)),
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 90),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
