import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  //PageController _pageController = PageController(viewportFraction: 0.3);
  int selectedIndex = 0;
  double selectedPage = 0;
  bool liked = false;
  List<String> listImages = [
    'images/i5.png',
    'images/i6.png',
  ];
  List<String> name = [
    'پروگرامر مدل 2000 ',
    'پروگرامر مدل 5000',
  ];
  List<String> price = [
    '1600000 تومان',
    '3000000 تومان',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcfcfc9),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              //color: Colors.red,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: IconButton(icon: Icon(Icons.arrow_back , size: 30.0, color: Color(0xffF5AD1A)), onPressed: null),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: IconButton(icon: Icon(Icons.shopping_basket, color: Color(0xffF5AD1A)), onPressed: () => (setState((){
                              listImages.removeLast();
                            })),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                ),
                SizedBox(
                  height: 50.0,
                ),
                ClipRRect(
                  child: Container(
                    //padding: ,
                    //color: Colors.red,
                    height: 500.0,
                    //width: 5000,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listImages.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(padding: EdgeInsets.only(left: 35.0, bottom: 60.0,),
                          child: SizedBox(
                            width: 250.0,
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: (index % 2 == 0) ? Color(0xff545454): Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(0.0, 10.0),
                                              blurRadius: 10.0
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Image.asset(listImages[index],
                                      //width: 172.5,
                                      height: 199.0,
                                    ),
                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    Padding(padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(name[index], style: TextStyle(fontSize: 20.0, color: (index % 2 == 0) ? Colors.white : Color(0xff545454) ),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(price[index], style: TextStyle(fontSize: 16.0, color: (index % 2 == 0) ? Colors.white : Color(0xff242424) ),
                                          ),
                                        ],
                                      ),),
                                    SizedBox(
                                      height: 38,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          //height: 50.0,
                                          //width: 50.0,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5AD1A),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20.0),
                                                  topLeft: Radius.circular(20.0),
                                                  bottomRight: Radius.circular(20.0),
                                                  bottomLeft: Radius.circular(20.0)
                                              )
                                          ),
                                          child: IconButton(icon: Icon(Icons.favorite, color: liked ? Colors.white : Colors.red,),
                                            onPressed: () => (setState((){
                                              liked = !liked;
                                              if(liked){
                                                listImages.removeAt(index);}
                                            })),),
                                        )
                                      ],
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}
