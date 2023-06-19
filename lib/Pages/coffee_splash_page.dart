import 'dart:async';

import 'package:CoffeeBeans/Pages/gettingStarted_paage.dart';
import 'package:flutter/material.dart';

class CoffeeSplashScreen extends StatefulWidget {
  const CoffeeSplashScreen({super.key});

  @override
  State<CoffeeSplashScreen> createState() => CoffeeSplashScreenState();
}

class CoffeeSplashScreenState extends State<CoffeeSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _profilePictureAnimation;
  late Animation _contentAnimation;
  late Animation _listAnimation;
  late Animation _fabAnimation;

  @override
  void initState() {
    super.initState();

// iconSize goes from 0.0 to 50.0
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _profilePictureAnimation = Tween(begin: 0.0, end: 30.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.20, curve: Curves.easeOut)));

// fontSize goes from 0.0 to 34.0
    _contentAnimation = Tween(begin: 0.0, end: 24.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.20, 0.40, curve: Curves.easeOut)));

// Opacity goes from 0.0 to 1.0
    _listAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.40, 0.75, curve: Curves.easeOut)));

// Fab Size goes from size * 0.0 to size * 1.0
    _fabAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 1.0, curve: Curves.easeOut)));
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
    // Switching screen with timer
    startTime();
  }

//Timer Function
  startTime() async {
    var duration = const Duration(seconds: 6);
    return  Timer(duration, route);
  }

// Navigation Fuction
  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const GettingStartedPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
         const   SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: _profilePictureAnimation.value,
                      width: _profilePictureAnimation.value,
                      child: Image.asset(
                        "lib/images/coffeebeans.png",
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Coffee Beans".toUpperCase(),
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: _contentAnimation.value,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Opacity(
                opacity: _listAnimation.value,
                child: Image.asset(
                  "lib/images/cupcoffee.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Transform.scale(
                scale: _fabAnimation.value,
                child: Image.asset("lib/images/coffeesplash.gif")),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Transform.scale(
                scale: _fabAnimation.value,
                child:const Text(
                  "Creating and Treating Coffee Obsessions.",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
