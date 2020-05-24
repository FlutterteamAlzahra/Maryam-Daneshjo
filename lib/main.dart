import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mainappstore1/Screens/mahsool.dart';

import 'Screens/Sell_Page.dart';
import 'Screens/profile.dart';

void main(){
  runApp(MaterialApp(
    localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      //const Locale('en'), // English
      const Locale('fa'), // Farsi
    ],
    home: HomePage(),
    theme: ThemeData(
      //fontFamily:
    ),
  ));
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}
class HomePageState extends State<HomePage> {
  bool isDrawerOpen = false;
  double drawerWidth = 300;
  double xOffset = -300;
  double yOffset = 0;

  Color backHomeColor = Color.fromRGBO(253,209,72, 1.0);
  double heightOfTopContainer = 240;

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

  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Aa",
    "B",
    "Ac",
    "Bc",
    "As",
    "Ba",
    "C",
    "D",
    "E",
    "F",
    "Ga",
    "H",
    "Ia",
    "Ja",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R"
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView(
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
                          height: heightOfTopContainer,
                          width: MediaQuery.of(context).size.width,
                          color: backHomeColor,
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
                                      isDrawerOpen=true;
                                      xOffset = 0;
                                      yOffset = 0;
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
                        Padding(
                          padding: EdgeInsets.only(top:heightOfTopContainer-26,left: 15.0, right: 15.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: TextField(
                                onChanged: onItemChanged,
                                controller: _textController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search,
                                        color:backHomeColor,
                                        size: 30.0),
                                    contentPadding:
                                    EdgeInsets.only(right: 15.0, top: 10.0),
                                    hintText: 'جستجو...',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      //fontFamily: 'Quicksand'
                                    ))),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15.0,),
                    CategoryScrollable(),
                    ItemCard('پروگرامر مدل 5000', 'assets/images/5000-1.png', false ,1),
                    ItemCard('پروگرامر مدل 5000', 'assets/images/6664.png', true , 2),
                    ItemCard('پروگرامر مدل 5000', 'assets/images/DSLR-800-2.png', true ,3)
                  ],
                ),
              ),
              //add to pages
              Profile(),
              Profile(),
              Profile(),
            ],
          ),
          bottomNavigationBar: BottomNavyBar(
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
      //********************************************
      //my customized drawer
        AnimatedPositioned(
          top: yOffset,
          right: xOffset,
          duration: Duration(milliseconds: 250),
          child: GestureDetector(
            onHorizontalDragStart: (DragStartDetails detals){
              print('right');
              setState(() {
                xOffset=-300;
                yOffset=0;
                isDrawerOpen=false;
              });
            },
            onTap: (){
              print("Container clicked");
              setState(() {
                xOffset=-300;
                yOffset=0;
                isDrawerOpen=false;

              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: drawerWidth,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    padding:EdgeInsets.only(right: 15,top: 55),
                    height: 220.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(radius: 25,backgroundColor: Color.fromRGBO(253,209,72, 1.0),),
                       SizedBox(height: 10.0,),
                        Text('نام کابر',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,backgroundColor: null,decorationColor: null),),
                        SizedBox(height: 7.0,),
                        Text('useraddress@gmaol.com',style: TextStyle(fontSize: 14,color: Colors.white,backgroundColor:null,decorationColor: null )),


                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30,top: 20),
                    child: Column(

                      children: <Widget>[
                        Text('علاقه مندیها '),
                        Text('علاقه مندیها محصولات بیشتر'),
                        Text('ارتباط با ماا '),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}




class CategoryScrollable extends StatelessWidget{

  var labels =['مبدل','ایسیوکیت','اسیلوسکوپ','پراگرامر','لوازم جانبی'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:  labels.length,
        itemBuilder: (BuildContext context, int index){
          return Container(

            margin: EdgeInsets.all(10.0),
            width: 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white70,

                /*gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white70,
                      Color.fromRGBO(253,209,72, 1.0),
                      Colors.white70,
                    ]
                ),*/
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(5.0,3.0),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Center(child: Text(labels[index],style: TextStyle(fontSize: 14.0 , color:Colors.black87),),),
          );
        },
      ),
    );
  }
}
class ItemCard extends StatefulWidget{
  var idHero;
  String title;
  String imgPath;
  bool isFavorite;
  ItemCard(this.title,this.imgPath,this.isFavorite,this.idHero);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ItemCartState();
  }

}
class ItemCartState extends State<ItemCard>{

  var heartIcon = Icons.favorite;
  var heartIconBorder = Icons.favorite_border;
  var countHeartIcon = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mahsool()));

              },
              child: Container(
                width: 140.0,
                height: 150.0,
                /*decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imgPath), fit: BoxFit.scaleDown)),*/
                child: Align(
                  alignment: Alignment(0.1,-0.5),
                  child: Hero(
                      tag:widget.idHero ,child: Image.asset(widget.imgPath)),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                          //fontFamily: ,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.0),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0,left: 0.0),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white),
                          child: Center(
                            child: widget.isFavorite
                                ? IconButton(icon: Icon(heartIcon,color: Colors.red),onPressed: (){
                                  setState(() {
                                    countHeartIcon+=1;
                                    countHeartIcon%2==1?heartIcon = Icons.favorite_border:heartIcon = Icons.favorite;

                              });
                            })
                                : IconButton(icon: Icon(heartIconBorder,color: Colors.red),onPressed: (){
                                setState(() {
                                  countHeartIcon+=1;
                                  countHeartIcon%2==1?heartIconBorder = Icons.favorite:heartIconBorder = Icons.favorite_border;

                              });
                            })
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.only(right: 10.0,left: 5.0),
                  width: 200.0,
                  child: Text(
                    'پروگرامر فوق سریع پیشرفته برای.... کارهای',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                    Container(
                      height: 40.0,
                      width: 60.0,
                      color: Colors.grey,
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,color:Color.fromRGBO(253,209,72, 1.0),
                        )
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 120.0,
                      color: Color.fromRGBO(253,209,72, 1.0),
                      child: Center(
                        child: Text(
                          '2500000',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}