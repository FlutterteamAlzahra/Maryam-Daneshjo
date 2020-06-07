import 'package:flutter/material.dart';
import 'package:getflutter/components/search_bar/gf_search_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mainappstore1/Screens/profile.dart';

class SellPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SellPageState();
  }

}
class SellPageState extends State<SellPage>{
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 30.0,left: 30,right: 20.0),
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.lightGreen,
                        child: Align(
                          //margin:EdgeInsets.all(10.0),
                          alignment: Alignment.topRight,

                          //padding: EdgeInsets.only(left: 20,right: 20,top:20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //SizedBox(width: 20.0,),
                              IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () {
                                  setState(() {

                                  });
                                },
                                color: Colors.white,
                                iconSize: 30.0,
                              ),
                              // CircleAvatar(radius: 20.0, backgroundColor: Colors.red,),
                              IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,size: 28,))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        //padding: EdgeInsets.only(right: 15.0),
                        top: 90,
                        right: 30,
                        child: Text(
                          'سلام :)'
                              '\n'
                              'دنبال چه محصولی هستید؟',
                          style: TextStyle(
                            //fontFamily: ,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),


                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                        child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              //transform: Matrix4.translationValues(-35.0, 160, 0),
                              width: double.infinity,
                              height: 100.0,
                              //height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                              color: Colors.black26,

                            )
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                        child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              //transform: Matrix4.translationValues(-35.0, 160, 0),
                              width: double.infinity,
                              height: 100.0,
                              //height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                              color: Colors.black26,

                            )
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                        child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              //transform: Matrix4.translationValues(-35.0, 160, 0),
                              width: double.infinity,
                              height: 100.0,
                              //height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                              color: Colors.black26,

                            )
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                        child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              //transform: Matrix4.translationValues(-35.0, 160, 0),
                              width: double.infinity,
                              height: 100.0,
                              //height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                              color: Colors.black26,

                            )
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                        child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              //transform: Matrix4.translationValues(-35.0, 160, 0),
                              width: double.infinity,
                              height: 100.0,
                              //height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                              color: Colors.black26,

                            )
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                        child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              //transform: Matrix4.translationValues(-35.0, 160, 0),
                              width: double.infinity,
                              height: 100.0,
                              //height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                              color: Colors.black26,

                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
            //add to pages
            Profile(),
            Profile(),
            Profile(),
          ],
        ),
        /*BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('خانه',style: TextStyle(color: Colors.black)),
                icon: Icon(Icons.home),
                activeColor: Color(0xfff0a500),
                inactiveColor: Color(0xff1e272e)
            ),
            BottomNavyBarItem(
                title: Text('محصولات',style: TextStyle(color: Colors.black),),
                icon: Icon(Icons.format_list_bulleted),
                activeColor: Color(0xfff0a500),
                inactiveColor: Color(0xff1e272e)
            ),
            BottomNavyBarItem(
                title: Text('علاقه مندی ها',style: TextStyle(color: Colors.black)),
                icon: Icon(Icons.favorite_border ),
                activeColor: Color(0xfff0a500),
                inactiveColor: Color(0xff1e272e)
            ),
            BottomNavyBarItem(
                title: Text('حساب کاربری',style: TextStyle(color: Colors.black)),
                icon: Icon(Icons.person_outline),
                activeColor: Color(0xfff0a500),
                inactiveColor: Color(0xff1e272e)
            ),
          ],
        ),*/
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height-100),
          child: BottomNavyBar(
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: Text('خانه',style: TextStyle(color: Colors.black)),
                  icon: Icon(Icons.home),
                  activeColor: Color(0xfff0a500),
                  inactiveColor: Color(0xff1e272e)
              ),
              BottomNavyBarItem(
                  title: Text('محصولات',style: TextStyle(color: Colors.black),),
                  icon: Icon(Icons.format_list_bulleted),
                  activeColor: Color(0xfff0a500),
                  inactiveColor: Color(0xff1e272e)
              ),
              BottomNavyBarItem(
                  title: Text('علاقه مندی ها',style: TextStyle(color: Colors.black)),
                  icon: Icon(Icons.favorite_border ),
                  activeColor: Color(0xfff0a500),
                  inactiveColor: Color(0xff1e272e)
              ),
              BottomNavyBarItem(
                  title: Text('حساب کاربری',style: TextStyle(color: Colors.black)),
                  icon: Icon(Icons.person_outline),
                  activeColor: Color(0xfff0a500),
                  inactiveColor: Color(0xff1e272e)
              ),
            ],
          ),
        ),
      ],
    );
  }
}