import 'package:CoffeeBeans/Pages/coffee_splash_page.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/coffee_shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CoffeeShop>(
        create: (context) => CoffeeShop(),
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Coffee Beans',
              home: CoffeeSplashScreen(),
            ));
  }
}
