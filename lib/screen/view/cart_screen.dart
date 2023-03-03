import 'package:addcart/screen/modal/prmodal.dart';
import 'package:addcart/screen/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

CartProvider? cartProvider;

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    cartProvider = Provider.of<CartProvider>(context, listen: false);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ECOMEERS APP",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'add');

              },
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.green.shade300,
                size: 30,
              ))
        ],
        backgroundColor: Colors.green.shade900,
        elevation: 0,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cartProvider!.ProductList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'cart',arguments: cartProvider!.ProductList[index]);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.lightGreen.shade300),
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${cartProvider!.ProductList[index].image}",
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(height: 5,),
                Text(
                  "${cartProvider!.ProductList[index].name}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade500,
                      backgroundColor: Colors.lightGreen),
                ),
                SizedBox(height: 5,),
                Text("${cartProvider!.ProductList[index].price}",
                style: TextStyle(color: Colors.green.shade700),),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
