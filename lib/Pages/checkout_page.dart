import 'dart:developer';

import 'package:CoffeeBeans/Pages/cart_page.dart';
import 'package:CoffeeBeans/Pages/homepage.dart';
import 'package:CoffeeBeans/components/top_nav_bar.dart';
import 'package:CoffeeBeans/const/Colors.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  final String coffeSize;
 
  final int coffeeQunatity;
  const  CheckoutPage({super.key, required this.coffeSize, required this.coffeeQunatity});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  void initState() {
    log(widget.coffeSize);
    log(widget.coffeeQunatity.toString());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // Back on press function
    void onBackPress() {
      Navigator.pop(context);
    }
     // Back to home press function
    void navigateToHome() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TopNavigationBar(
                  ontapOne: () => onBackPress(),
                  ontapTwo: () =>navigateToHome(),
                  iconOne: Icons.arrow_back,
                  navBgcolorOne: Colors.grey.shade400,
                  iconTwo: Icons.home,
                  navBgcolorTwo: Colors.grey.shade400,
                  ),
           const   SizedBox(
                height: 40,
              ),
              Expanded(child: CartPage(coffeSize: widget.coffeSize,coffeeQunatity: widget.coffeeQunatity,))
            ],
          ),
        ),
      ),
    );
  }
}
