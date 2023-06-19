import 'package:CoffeeBeans/components/contactUsTile.dart';
import 'package:CoffeeBeans/const/Colors.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text("Get in Touch with us !",
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "lib/images/coffeebeans.png",
                  height: 200,
                  width: 200,
                ),
              ),
                const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: Card(
                  color: Colors.grey.shade400,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("How can we help You ?",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Its look like you are experencing some problems with us.\nWe are here to help, please get in touch with us.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContactUsTile(
                    imageTile: "Call Us",
                    imagepath: "lib/images/iphonelogo.png",
                  ),
                  ContactUsTile(
                    imageTile: "Mail Us",
                    imagepath: "lib/images/gmail.png",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
