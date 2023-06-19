import 'package:flutter/material.dart';

class DeveloperContactPage extends StatefulWidget {
  const DeveloperContactPage({super.key});

  @override
  State<DeveloperContactPage> createState() => _DeveloperContactPageState();
}

class _DeveloperContactPageState extends State<DeveloperContactPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Developer Conatct",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 400,
          width: 400,
          child: Card(
            elevation: 10,
            color: Colors.brown,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.brown.shade300,
                      radius: 90,
                      child: Image.asset('lib/images/man.png')),
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "Srinath Narayan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    )),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "App Developer",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    )),

              const  SizedBox(
                  height: 10,
                ),

//social icons

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.brown.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('lib/images/gmail.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.brown.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('lib/images/iphonelogo.png'),
                          ),
                        ),
                      ),
                    ),SizedBox(
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.brown.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('lib/images/instagramlogo.png'),
                          ),
                        ),
                      ),
                    ),SizedBox(
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.brown.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('lib/images/facebooklogo.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
