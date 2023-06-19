
import 'package:CoffeeBeans/Pages/coffee_quantity.dart';
import 'package:CoffeeBeans/components/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:CoffeeBeans/models/coffee_shop.dart';
import '../models/coffe.dart';




class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

//switching to quantity page
void switchToQuantityPage(Coffee coffee){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  CoffeeQuantity(cofee: coffee,)),
  );
}


//add to cart
void addToCart(Coffee coffee){
  // added to cart
Provider.of<CoffeeShop>(context ,listen: false).addItemToCart(coffee);
//Success msseage
showDialog(context: context, builder: (context)=>  AlertDialog(
  title:const Center(child: Text( "Added to your cart !\nKindly Check with cart")),
  titleTextStyle: const TextStyle(color: Colors.white,fontSize: 20),
  backgroundColor: Colors.black,
shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
     
  ),
  
));

}
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                 const   Text(
                      "How would you like your Coffee !",
                      style: TextStyle(fontSize: 20),
                    ),
                  const  SizedBox(
                      height: 50,
                    ),
                    //list of coffee
                    Expanded(
                        child: ListView.builder(
                          itemCount:value.coffeeShop.length ,
                            itemBuilder: (context, index) {

                              //get each item
                              Coffee eachCoffee = value.coffeeShop[index];
                              return CoffeeTile(coffee: eachCoffee , onPressed: () => switchToQuantityPage(eachCoffee), icon: Icon(Icons.arrow_forward_ios),);
                            }))
                  ],
                ),
              ),
            ));
  }
}
