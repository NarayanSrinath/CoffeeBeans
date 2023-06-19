import 'package:CoffeeBeans/Pages/checkout_product_page.dart';
import 'package:CoffeeBeans/components/coffee_tile.dart';
import 'package:CoffeeBeans/const/Colors.dart';
import 'package:CoffeeBeans/models/coffe.dart';
import 'package:CoffeeBeans/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
   final String coffeSize;
 
  final int coffeeQunatity;
  const CartPage({super.key, required this.coffeSize, required this.coffeeQunatity});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeitemFromCart(coffee);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title:const  Center(child: Text("Removed from your cart !")),
              titleTextStyle:const TextStyle(color: Colors.white, fontSize: 20),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ));
  }
 


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Scaffold(
                backgroundColor: bgcolor,
                body: Column(
                  children: [
                 const   Text(
                      "Your Cart",
                      style: TextStyle(fontSize: 25),
                    ),
                  const  SizedBox(
                      height: 50,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCart.length,
                            itemBuilder: (context, index) {
                              //get each coffes
                              Coffee _eachCoffee = value.userCart[index];
                              return CoffeeTile(
                                coffee: _eachCoffee,
                                icon:const  Icon(Icons.delete_forever),
                                onPressed: () => removeFromCart(_eachCoffee),
                              );
                            })),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          /// Payment Function
                          
                        showModalBottomSheet(
    
          isScrollControlled: true,
          elevation: 10,
          backgroundColor: bgcolor,
          context: context,
          builder: (context) {
            return Container(
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child: CheckoutProductPage(coffeSize: widget.coffeSize,coffeeQunatity:widget.coffeeQunatity ,));
          });
                        },
                        child: Container(
                          height: 60,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(20)),
                          child:const Center(
                              child: Text(
                            "CheckOut",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
