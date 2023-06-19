import 'package:CoffeeBeans/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key, required this.coffee, this.onPressed, required this.icon});
final Coffee coffee;
final void Function()? onPressed;
final Widget icon;


  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.grey[350],
      elevation: 10,
      margin: EdgeInsets.all(10),
       shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
      //set border radius more than 50% of height and width to make circle
  ),
      child: ListTile(
    
      textColor: Colors.black,
        title: Text(coffee.name),
        subtitle: Text("${coffee.price.toString()} INR"),
        
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
        
      ),
    );
  }
}