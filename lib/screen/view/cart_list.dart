import 'package:addcart/screen/modal/prmodal.dart';
import 'package:addcart/screen/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  CartProvider? cartProvider;


  @override
  Widget build(BuildContext context) {

    cartProvider = Provider.of<CartProvider>(context, listen: false);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        title: Text("Add",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green.shade900,
        elevation: 0,
      ),
      body: Column(
        children: [
          Consumer(
            builder: (context, value, child) => ListTile(
              leading: Text("${cartProvider!.cartList[index].image}"),
              title: Text("${cartProvider!.cartList[index].name}"),
              subtitle: Text("${cartProvider!.cartList[index].price}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {
                    PrModal p1=PrModal(
                      price: cartProvider!.cartList[index].price,

                      image: cartProvider!.cartList[index].image,

                      name: cartProvider!.cartList[index].name,

                      qa: cartProvider!.cartList[index].qa!+1,

                    );
                    cartProvider!.updateqa(index, p1);


                  }, icon: Icon(Icons.add)),
                  Text("${cartProvider!.cartList[index].qa}"),
                  IconButton(onPressed: () {
                    PrModal p1=PrModal(
                        price: cartProvider!.cartList[index].price,

                        image: cartProvider!.cartList[index].image,

                        name: cartProvider!.cartList[index].name,

                        qa: cartProvider!.cartList[index].qa!-1,

                    );
                    cartProvider!.updateqa(index, p1);


                  }, icon: Icon(Icons.remove)),

                ],
              ),

            ),
          )
        ],
      ),
    ));
  }
}
