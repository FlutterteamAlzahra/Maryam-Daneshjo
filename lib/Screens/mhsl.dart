import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'Products.dart';

class Store extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Store> {


  List<Products> _items=[];

  @override
  void initState(){
    super.initState();
    fetchItem();

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          body:Padding(
              padding:EdgeInsets.all(25),
              child:GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 25,
                  children:
                  List.generate(_items.length,(int position){
                    return generateItem(_items[position]);
                  }

                  )
              )

          )
      ),);
  }
  void fetchItem() async{
    var url='http://welearnacademy.ir/flutter/products_list.json';
    Response response= await get(url);
    setState(() {
      var productJson=json.decode(utf8.decode(response.bodyBytes));
      for (var i in productJson){
        var productItem=Products(i['product_name'],i['price'],i['image_url'],i['description'],);
        _items.add(productItem);
      }
    });
  }
}
Card generateItem(Products product){
  return Card(
    shape: RoundedRectangleBorder(),
    color: Colors.red,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width:200,
            child: Image.network(product.imageUrl),
          ),
          Text(product.price,
            style: TextStyle(

              fontSize: 16.0,
              color: Colors.black

            ),
          ),
          Text(product.productName,
            style: TextStyle(

                fontSize: 14.0,
                color: Colors.black

            ),
          )
        ],
      ),

    ),
  );


}
