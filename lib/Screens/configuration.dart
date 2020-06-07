import 'package:flutter/material.dart';
import 'mahsool.dart';
//************* home *****************
Color backHomeColor = Color.fromRGBO(253,209,72, 1.0);
Color p_light = Color.fromRGBO(255, 255, 122, 1.0);
Color p_dark = Color.fromRGBO(198, 160, 6, 1.0);

//*************drawer ****************
List<Map> drawerItems=[
  {
    'icon': Icons.mail,
    'title' : 'ارتباط با ما',
    'nameOfClassRoot': Mahsool(),
  },
  {
    //'icon': FontAwesomeIcons.plus,
    'icon': Icons.favorite_border,
    'title' : 'علاقه ها',
    'nameOfClassRoot': Mahsool(),
  },
  {
    'icon': Icons.shopping_cart,
    'title' : 'سبد خرید',
    'nameOfClassRoot': Mahsool(),
  },

];