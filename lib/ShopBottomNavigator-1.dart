import 'package:flutter/material.dart';
class ShopBottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        color: Colors.white10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/2-20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home,color: Colors.blueGrey[600],),
                    onPressed: ()=>(Navigator.pushNamed(context, '/seven')
                  ),),
                  IconButton(
                    icon: Icon(Icons.person,color: Colors.blueGrey[600],),
                    onPressed: ()=>(Navigator.pushNamed(context, '/eight')
                    ),),
                ],
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/2-20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.phone,color: Colors.blueGrey[600],),
                    onPressed: ()=>(Navigator.pushNamed(context, '/nine')
                    ),),
                  IconButton(
                    icon: Icon(Icons.shopping_basket,color: Colors.blueGrey[600],),
                    onPressed: ()=>(Navigator.pushNamed(context, '/ten')
                    ),),

                ],
              ),
            )
          ],
        ),
        height: 60,
      ),
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      clipBehavior: Clip.antiAlias,
    );
  }
}
