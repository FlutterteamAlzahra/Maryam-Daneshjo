import 'package:flutter/material.dart';
import 'package:mainappstore1/Screens/Products.dart';
import 'package:mainappstore1/Screens/shoppingBasket.dart';
class ShoppingBasketItem extends StatefulWidget {
  Products _products;

  ShoppingBasketItem(this._products);

  @override

  _ShoppingBasketItemState createState() => _ShoppingBasketItemState();

}

class _ShoppingBasketItemState extends State<ShoppingBasketItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(
            Icons.shopping_basket,
            color: Colors.black45,

          ),
              onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> ShoppingBasket())
            );
              })
        ],
      ),
    );
    /*return Card(
      child: Container(
        height: 200,
        child:Row(
          children: <Widget>[
            Padding(
              child: Image.network(widget._products.imageUrl),)
          ]

        ) ,
        Column(
          children: <Widget>[
            child: Text(widget._products.productName)
          ]
        )

      ),

      elevation: 5,

    );}
}
*/}}