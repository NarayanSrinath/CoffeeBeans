

import 'package:CoffeeBeans/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  // Coffee list
  final List<Coffee> _shop = [
    Coffee(
        name: "Cold Coffee", price: 500 , imagePath: "lib/images/coldcoffee.png"),
        Coffee(
        name: "Latte", price: 650 , imagePath: "lib/images/latte.png"),
        Coffee(
        name: "Iced Cofee", price: 450, imagePath: "lib/images/icedcoffee.png"),
        Coffee(
        name: "Hot Coffee", price: 300, imagePath: "lib/images/hotcoffee.png"),
        Coffee(
        name: "Black Coffe", price: 250, imagePath: "lib/images/coffeecup.png"),
  ];

  //User cart
List <Coffee> _userCart=[];
  // get coffee list
List <Coffee> get coffeeShop =>_shop;
  //get User cart
List <Coffee> get userCart=>_userCart;
  //adding item to the cart
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}
  //removing item from cart

  void removeitemFromCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
}
}
