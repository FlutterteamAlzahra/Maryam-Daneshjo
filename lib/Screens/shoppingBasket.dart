import 'package:flutter/material.dart';
import 'ShoppingBasketData.dart';
import 'ShoppingBasketItem.dart';

class ShoppingBasket extends StatefulWidget {
  @override

  _ShoppingBasketState createState() => _ShoppingBasketState();

}

class _ShoppingBasketState extends State<ShoppingBasket> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      /*appBar: AppBar(centerTitle: true,title: Text(' فروشگاه',style: TextStyle(color: Colors.black),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shop,color: Colors.black45,),
        ),
        IconButton(
          icon: Icon(Icons.search,color: Colors.blueGrey[600],),
          //onPressed: ()=>(Navigator.pushNamed(context, '/eleven')

        ),

      ],
      ),*/
      body: BasketUI(),
    );
  }
  Widget BasketUI() {
    return ListView.builder(
        itemCount: ShoppingBasketData.getInstance().basketItems.length,
        itemBuilder: (context,position){
          return GestureDetector(
            child: Padding(child: ShoppingBasketItem(ShoppingBasketData.getInstance().basketItems[position]),
              padding: EdgeInsets.all(9),
            ),

          );

        }

    );}
}
