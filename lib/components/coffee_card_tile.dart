import 'package:flutter/material.dart';

class CoffeeCardTile extends StatefulWidget {
  final String imagePath;
  final String cofeeName;
  final int coffePrice;
  const CoffeeCardTile({super.key, required this.imagePath, required this.cofeeName, required this.coffePrice});

  @override
  State<CoffeeCardTile> createState() => _CoffeeCardTileState();
}

class _CoffeeCardTileState extends State<CoffeeCardTile> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return SizedBox(
      height: 350,
      width: 300,
      child: Card(
        color: Colors.grey.shade400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: _screen.height * 0.20,
                width: _screen.width * 0.65,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Image.asset(this.widget.imagePath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  height: _screen.height * 0.10,
                  width: _screen.width * 0.65,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
this.widget.cofeeName,
                            style: TextStyle(fontSize: 20,color: Colors.brown,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                        child: Align(
                           alignment: Alignment.centerLeft,
                          child: Text(
                            this.widget.coffePrice.toString(),
                            style: TextStyle(fontSize: 18,color: Colors.brown,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
