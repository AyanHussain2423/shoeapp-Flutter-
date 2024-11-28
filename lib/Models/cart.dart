import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/Models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> Shoeshop =[
    Shoe(
        name: "Zoom Freak",
        price: "199",
        imagePath: 'lib/images/shoe1.png',
        Description: "these are the elite shoe1"
    ),
    Shoe(
        name: "Air Freak",
        price: "239",
        imagePath: 'lib/images/shoe2.png',
        Description: "these are the elite shoe2"
    ),
    Shoe(
        name: "Air Jordens",
        price: "269",
        imagePath: 'lib/images/shoe1.png',
        Description: "these are the elite shoe3"
    ),
    Shoe(
        name: "Fin Fin ",
        price: "299",
        imagePath: 'lib/images/shoe2.png',
        Description: "these are the elite shoe4"
    ),
  ];
  List<Shoe> getShoeList(){
    return Shoeshop;
  }
  List<Shoe> userCart = [];

  List<Shoe> getUserCart(){
    return userCart;
    notifyListeners();
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemToCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}