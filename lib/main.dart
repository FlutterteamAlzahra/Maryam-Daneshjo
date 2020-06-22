import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mainappstore1/Screens/mahsool.dart';
import 'package:mainappstore1/Screens/mhsl.dart';

import 'Screens/Liked_Page.dart';
import 'Screens/Sell_Page.dart';
import 'Screens/amoozesh.dart';
import 'Screens/configuration.dart';
import 'Screens/gallery/gallery_example.dart';


import 'package:getflutter/getflutter.dart';

import 'Screens/product_page.dart';

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


  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  String currentProfilePic = "https://avatars3.githubusercontent.com/u/16825392?s=460&v=4";
  String otherProfilePic = "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  bool isDrawerOpen = false;
  bool selectAdvice = false;
  double drawerWidth = 300;
  double xOffset = -300;
  double yOffset = 0;
  TextStyle draweriststyle = TextStyle(
      color: Colors.black87,
      fontSize: 16,
      backgroundColor: null,
      decorationColor: null,
      decoration: TextDecoration.none
  );

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

  static List<String> searchDataList = [
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
  List<String> newDataList = List.from(searchDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = searchDataList
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
                        Stack(
                          children: <Widget>[
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
                        )

                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(height: 15.0,),
                            CategoryScrollable(),
                            SizedBox(height: 15.0,),
                            topListMenu(),
                            ItemCard('پروگرامر مدل 5000', 'assets/images/5000-1.png', false ,1),
                            ItemCard('پروگرامر مدل 5000', 'assets/images/6664.png', true , 2),
                            ItemCard('پروگرامر مدل 5000', 'assets/images/DSLR-800-2.png', true ,3)
                          ],
                        ),

                        //search box
                        Padding(
                          padding: EdgeInsets.only(top:5.0,left: 15.0, right: 15.0),
                          child: Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                //transform: Matrix4.translationValues(-35.0, 160, 0),
                                width: double.infinity,
                                //height: 300.0,
                                height: (newDataList.length==0 ||_textController.text.isEmpty)? 0.0:newDataList.length>3? 100.0:newDataList.length*43.0,
                                color: Colors.black26,
                                child: ListView(
                                  padding: EdgeInsets.only(right: 2.0,top: 0.00),
                                  children: newDataList.map((data) {
                                    return ListTile(
                                      contentPadding: EdgeInsets.only(top:0.0,bottom: 2.0,right: 40.0),
                                      title: Text(data),
                                      onTap: (){
                                        print(data);
                                        _textController.text=data;
                                        selectAdvice =true;
                                      }
                                    );
                                  }).toList(),
                                ),
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //add to pages
              /*SellPage(),
              SellPage(),
              SellPage(),*/
              Product(),
              Screen1(),
              //Like(),
              Store(),
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
              child: Material(
                //type: MaterialType.transparency,
                child: new ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    //Text('item1',textAlign: TextAlign.right,style: draweriststyle,),
                    new UserAccountsDrawerHeader(
                      accountEmail: new Text("useraccount@gmail.com",style: TextStyle(color: Colors.black),),
                      accountName: new Text("userName",style: TextStyle(color: Colors.black)),
                      currentAccountPicture: new GestureDetector(
                        child: new CircleAvatar(
                          backgroundImage: new NetworkImage(currentProfilePic),
                        ),
                        onTap: () => print("This is your current account."),
                      ),
                      /*otherAccountsPictures: <Widget>[
                        new GestureDetector(
                          child: new CircleAvatar(
                            backgroundImage: new NetworkImage(otherProfilePic),
                          ),
                          onTap: () => switchAccounts(),
                        ),
                      ],*/
                      decoration: new BoxDecoration(
                        color: Colors.grey[200],
                          image: new DecorationImage(
                              image: new NetworkImage("https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Column(
                    children: drawerItems.map((element) => ListTile(
                        title: new Text(element['title']),
                        trailing: new Icon(element['icon']),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>element['nameOfClassRoot']));
                          setState(() {
                            xOffset=-300;
                            yOffset=0;
                            isDrawerOpen=false;
                          });
                        }
                    ),).toList(),
                      ),
                  ],
                ),
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
class topListMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        //SizedBox(height: 10.0,),
        Material(
          elevation: 1.0,
          child: Container(
            padding: EdgeInsets.only(top: 5.0,right: 20.0,left: 20.0),
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                topItemMenu('آموزش',Icon(Icons.school),Amoozesh(),context),
                topItemMenu('اخبار',Icon(Icons.phone_android),GalleryExample(),context),
                topItemMenu('قوانین',Icon(Icons.warning),GalleryExample(),context),
                topItemMenu('تماس با ما',Icon(Icons.phone),GalleryExample(),context),
              ],
            )
          ),
        )
      ],
    );
  }
}
class topItemMenu extends StatelessWidget{
  final txt;
  final Icon icon;
  final linkClass;
  final homeContext;
  topItemMenu(this.txt, this.icon, this.linkClass, this.homeContext);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        /*Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            //image:
                          )
                      ),
                    ),*/
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
            ),
            //padding: EdgeInsets.all(10.0),
            child: IconButton(
                icon:this.icon,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (homeContext)=>linkClass));
              },
            )
        ),
        Text(this.txt)
      ],
    );
  }

}