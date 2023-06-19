import 'package:CoffeeBeans/Pages/homepage.dart';

import 'package:flutter/material.dart';

class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage({super.key});

  @override
  State<GettingStartedPage> createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        "lib/images/coffeebeans.png",
                      )),
                   Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Coffee Beans".toUpperCase(),
                      style:  const TextStyle(
                          color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 400,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("lib/images/coffee.png"),
                  )),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Creating and Treating Coffee Obsessions.",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text(
                  "A cup of coffee lasts only a moment, but it is that moment that makes your day better.",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    /// Payment Function

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)),
                    child:const Center(child: Icon(Icons.arrow_forward)),
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
