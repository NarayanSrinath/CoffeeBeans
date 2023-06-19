
import 'package:CoffeeBeans/Pages/homepage.dart';
import 'package:CoffeeBeans/components/coffee_tile.dart';
import 'package:CoffeeBeans/const/Colors.dart';
import 'package:CoffeeBeans/models/coffe.dart';
import 'package:CoffeeBeans/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutProductPage extends StatefulWidget {
   final String coffeSize;
 
  final int coffeeQunatity;
  const CheckoutProductPage({super.key, required this.coffeSize, required this.coffeeQunatity});

  @override
  State<CheckoutProductPage> createState() => _CheckoutProductPageState();
}

class _CheckoutProductPageState extends State<CheckoutProductPage> {

  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeitemFromCart(coffee);
    Navigator.of(context).pop();
  }
    int sum=0;
  @override
  Widget build(BuildContext context) {
  
    //paynw function
void payNow(){
  showDialog(
    
          context: context,
          builder: (context) => AlertDialog(
            actions: [
                TextButton(
          child: const Text("Order More"),
          onPressed: () {
 Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const HomePage()),
      );
          },
        ),
            ],
            elevation: 10,
            contentPadding: const  EdgeInsets.all(10),
                title: const Center(child: Text("Pay the amount at the counter.\nAnd enjoy your coffee",textAlign: TextAlign.center,)),
                titleTextStyle:const TextStyle(color: Colors.white, fontSize: 20),
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ));
              
}
    return Consumer<CoffeeShop>(

        builder: (context, value, child) => Scaffold(

              backgroundColor: bgcolor,
              body: Padding(
                padding:const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 20, right: 10, left: 10, bottom: 20),
                          child: Text(
                            "Order Details",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Your Cart",
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      /// coffee ordered list

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height:300,

                          width: double.maxFinite,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300),
                          child: ListView.builder(
                              itemCount: value.userCart.length,
                              itemBuilder:
                                  (BuildContext context, int index) {
                                Coffee  _eachCoffee = value.userCart[index];
                                return CoffeeTile(
                                  coffee: _eachCoffee,
                                  icon: const Icon(Icons.delete_forever),
                                  onPressed: () =>
                                      removeFromCart(_eachCoffee),
                                );
                              }),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Order Info",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 200,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.grey.shade300,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ////Subtotal tile
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                  const  Padding(
                                      padding:  EdgeInsets.only(
                                          left: 20, top: 20),
                                      child: Text(
                                        "Subtotal",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const  EdgeInsets.only(
                                          right: 20, top: 20),
                                      child: Text(
                                          
                                        "${sum = value.userCart.map((usercart) => usercart.price).fold(0, (prev, price) => prev + price)} INR",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                ///Shopping Cost tile
                               const  Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(
                                          left: 20, top: 20),
                                      child: Text(
                                        "Shopping Cost",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(
                                          right: 20, top: 20),
                                      child: Text(
                                        "${100} INR",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                ///Total tile
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                 const   Padding(
                                      padding:  EdgeInsets.only(
                                          left: 20, top: 20),
                                      child: Text(
                                        "Total",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, top: 20),
                                      child: Text(
                                        "${sum +100} INR",
                                        style:const  TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            /// Payment Function
                            payNow();
                   
                          },
                          child: Container(
                            height: 60,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(20)),
                            child:const  Center(
                                child: Text(
                              "Procced",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
