import 'package:flutter/material.dart';
import 'Products.dart';
class ShoppingBasketData{


  static ShoppingBasketData _instance;
  List <Products> _basketItems;
  ShoppingBasketData(){
    _basketItems=List();
  }
  List get basketItems => _basketItems;
  set basketItems(List value){
    _basketItems= value;
  }
  static ShoppingBasketData getInstance(){
    if(_instance == null){
      _instance=ShoppingBasketData();
    }
    return _instance;
  }
}

