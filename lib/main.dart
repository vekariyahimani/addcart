
import 'package:addcart/screen/provider/cart_provider.dart';
import 'package:addcart/screen/view/addcart.dart';
import 'package:addcart/screen/view/cart_list.dart';
import 'package:addcart/screen/view/cart_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




void main()
{
  runApp(
      ChangeNotifierProvider(
        create: (context) => CartProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => CartScreen(),
            'cart':(context) => AddCart(),
            'add':(context) => CartList(),


          },
        ),
      )
  );
}