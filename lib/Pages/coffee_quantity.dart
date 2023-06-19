import 'dart:developer';

import 'package:CoffeeBeans/components/coffee_card_tile.dart';

import 'package:CoffeeBeans/components/top_nav_bar.dart';

import 'package:CoffeeBeans/const/Colors.dart';
import 'package:CoffeeBeans/models/coffe.dart';
import 'package:CoffeeBeans/models/coffee_shop.dart';
import 'package:crea_radio_button/crea_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkout_page.dart';

class CoffeeQuantity extends StatefulWidget {
  final Coffee cofee;
  const CoffeeQuantity({super.key, required this.cofee});

  @override
  State<CoffeeQuantity> createState() => _CoffeeQuantityState();
}

class _CoffeeQuantityState extends State<CoffeeQuantity> {
//Coffee item count
  var _itemCount = 0;
//Coffee size input
  String label = "";

//Coffee Size List
  List<RadioOption> options = [
    RadioOption("LARGE", "Large"),
    RadioOption("MEDIUM", "Medium"),
    RadioOption("REGULAR", "Regular"),
  ];
  @override
  Widget build(BuildContext context) {
    // Back on press function
    void onBackPress() {
      Navigator.pop(context);
    }

    // Adding to  cart
    void addtoCart() {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CheckoutPage(
                  coffeSize: label,
                  coffeeQunatity: _itemCount,
                )),
      );
      log("Cart");
    }

//add to cart
    void addToCart(Coffee coffee) {
      // added to cart
      Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
//Success msseage
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title:const Center(child: Text("Added to your cart !\nKindly Check with your cart",textAlign: TextAlign.center,)),
                titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ));
    }

    return Scaffold(
      backgroundColor: bgcolor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              TopNavigationBar(
                ontapOne: () => onBackPress(),
                ontapTwo: () => addtoCart(),
                iconOne: Icons.arrow_back,
                navBgcolorOne: Colors.grey.shade400,
                iconTwo: Icons.shopping_bag,
                navBgcolorTwo: Colors.grey.shade400,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Quantity",
                style: TextStyle(fontSize: 25, color: Colors.brown),
              ),
              const SizedBox(
                height: 30,
              ),
              CoffeeCardTile(
                cofeeName: widget.cofee.name,
                coffePrice: widget.cofee.price,
                imagePath: widget.cofee.imagePath,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Coffee Size",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),

              ///Coffee Size Selectiom
              RadioButtonGroup(
                  options: options,
                  textStyle: const TextStyle(fontSize: 15, color: Colors.brown),
                  mainAxisAlignment: MainAxisAlignment.center,
                  selectedColor: Colors.grey.shade400,
                  mainColor: Colors.grey.shade400,
                  selectedBorderSide:
                      const BorderSide(width: 2, color: Colors.black),
                  buttonWidth: 100,
                  buttonHeight: 50,
                  callback: (RadioOption val) {
                    setState(() {
                      label = val.label;
                    });
                    log(val.label);
                  }),

              ///coffee size ending
              const SizedBox(
                height: 30,
              ),
              //// Coffee Quantity
              SizedBox(
                height: 60,
                width: 200,
                child: Card(
                  elevation: 10,
                  color: Colors.grey.shade400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_itemCount >= 0 && _itemCount < 10) {
                              _itemCount++;
                              log("Adding");
                            }
                          });
                        },
                        child: const Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.brown,
                        ),
                      ),
                      Text(
                        " ${_itemCount}",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown),
                      ),
                      IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 25,
                            color: Colors.brown,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_itemCount >1 ) {
                                _itemCount--;
                                log("Removing");
                              }
                            });
                          }),
                    ],
                  ),
                ),
              ),
              //Qunatity tile Ending
           const   SizedBox(
                height: 30,
              ),

              /// Add to cart Button
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    /// Addtocart Function
                    addToCart(widget.cofee);
                  },
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Add to Cart",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
