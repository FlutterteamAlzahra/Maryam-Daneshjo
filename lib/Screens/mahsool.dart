import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mahsool extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MahsoolState();
  }

}
class MahsoolState extends State<Mahsool> {
  var heartIcon = Icons.favorite_border;
  var countHeartIcon = 0;
  @override
  Widget build(BuildContext context) {
    return
      /*Column(
      children: <Widget>[
        Container(
            width: 100.0,
            height: 100.0,
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Hero(
              tag:1,
              child: Image.asset('image/6664.png'),
            )
        ),
        Image(image: AssetImage('500-1.png'),),
      ],
    );*/
      //rgba(255, 236, 179,1.0)
      //rgba(255, 236, 179,1.0)
      Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.amber[200],
            /*image: DecorationImage(
              image: AssetImage('image/6664.png'),
              alignment: Alignment.topRight,
            ),*/
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top:10, right:20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: (){ Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back),
                        ),
                        IconButton(
                          onPressed: (){ Navigator.pop(context);},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                    Image(image: AssetImage('assets/images/5000-1.png'),)
                  ],
                ),
              ),
              SizedBox(height: 40.0,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight:  Radius.circular(50),topLeft:  Radius.circular(50)),
                    //borderRadius: BorderRadius.circular(50),
                    color:Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width:300.0,
                            height: 50.0,
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(color: Colors.amber[100],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.share,color: Colors.black),),
                                IconButton(icon: Icon(Icons.comment,color: Colors.black),),
                                IconButton(icon: Icon(heartIcon,color: Colors.red),onPressed: (){
                                  setState(() {
                                    countHeartIcon+=1;
                                    countHeartIcon%2==1?heartIcon = Icons.favorite:heartIcon = Icons.favorite_border;

                                  });
                                },),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      );
  }
}

