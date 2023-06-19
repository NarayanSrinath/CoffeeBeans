import 'package:CoffeeBeans/Pages/aboutus_page.dart';
import 'package:CoffeeBeans/Pages/contactus_page.dart';

import 'package:CoffeeBeans/Pages/shop_page.dart';
import 'package:CoffeeBeans/components/bottom_nav_bar.dart';
import 'package:CoffeeBeans/const/Colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigation function
  int _selectedIndex = 0;
  navigationbottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
// Pages
final List<Widget>_pages=[
 //shop
const ShopPage(),
//cart
const AboutUs(),
//coantact us
const ContactUs()

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      bottomNavigationBar: MybottomNavBar(
        onTabChange: (index) => navigationbottombar(index),
      ),
      body: _pages[_selectedIndex]
    );
  }
}
