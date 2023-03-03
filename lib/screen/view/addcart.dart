import 'package:addcart/screen/modal/prmodal.dart';
import 'package:addcart/screen/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  CartProvider? cartProvider;

  @override
  Widget build(BuildContext context) {
    PrModal data=ModalRoute.of(context)!.settings.arguments as PrModal;
    cartProvider = Provider.of<CartProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 50,),
          ListTile(

            leading:  Text(
              "${data.image}",
              style: TextStyle(fontSize: 40),
            ),
            title:
            Text(
              "${data.name}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade500,
                  backgroundColor: Colors.lightGreen),
            ),
            subtitle:Text("     ${data.price}",
              style: TextStyle(color: Colors.green.shade700),),

          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add_shopping_cart,color: Colors.green.shade900,),
                  SizedBox(width: 10,),
                  Text("Add to Cart",style: TextStyle(color: Colors.green.shade900),)
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green),))
        ],
      ),
    ));
  }
}
