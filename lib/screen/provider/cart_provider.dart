import 'package:addcart/screen/modal/prmodal.dart';
import 'package:flutter/cupertino.dart';

class CartProvider extends ChangeNotifier
{
   List<PrModal> ProductList=[
     PrModal(price: "100",image: "🍎",name: "APPLE",qa: 1),
     PrModal(price: "200",image: "🥭",name: "MANGO",qa: 1),
     PrModal(price: "300",image: "🍓",name: "STRBWRY",qa: 1),
     PrModal(price: "19",image: "🍇",name: "GRAEPS",qa: 1),
     PrModal(price: "20",image: "🥝",name: "KIWI",qa: 1),
     PrModal(price: "30",image: "🍒",name: "CHARY",qa: 1),
     PrModal(price: "100",image: "🍉",name: "WHATERMALN",qa: 1),
     PrModal(price: "100",image: "🍍",name: "PINEAPPLE",qa: 1),





   ];
   List<PrModal> cartList=[];

   void addCart(PrModal p1)
   {
     cartList.add(p1);
   }

   void updateqa(int index,PrModal p1)
   {
     cartList[index]=p1;
     notifyListeners();

   }


}