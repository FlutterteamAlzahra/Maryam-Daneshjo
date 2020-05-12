//farsisazi
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'ClassOfScreens.dart';
import 'ShopBottomNavigator-1.dart';
import 'package:carousel_pro/carousel_pro.dart';
//mypacks
import 'package:mychangehome/components/horizontal_listview.dart';
import 'package:mychangehome/components/products.dart';
void main() => (runApp(First()));
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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


      title: 'first',
      debugShowCheckedModeBanner: false
      ,
      theme: ThemeData(fontFamily: 'Bamshad'),/**/
      initialRoute: '/',
      routes: {
        '/': (context)=> FirstScreenState(),
        '/second': (context)=> SecondScreen(),
        '/third': (context)=> ThirdScreen(),
        '/forth':(context)=>ForthScreen(),
        '/fifth':(context)=>FifthScreen(),
        '/sixth':(context)=>SixthScreen(),
        '/seven':(context)=>SevenScreen(),
        '/eight':(context)=>EightScreen(),
        '/nine':(context)=>NineScreen(),
        '/ten':(context)=>TenScreen(),
        '/eleven':(context)=>ElevenScreen(),
      },
    );
  }
}
class FirstScreenState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FirstScreen();
}
class FirstScreen extends State<FirstScreenState>{
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carosalImages/classbanner.jpg'),
          AssetImage('images/carosalImages/classbanner2.jpg'),
          AssetImage('images/carosalImages/DSLR-800-2.png'),
        ],
        autoplay:true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 100),
        dotSize: 8.0,
        indicatorBgPadding: 12.0,
      ),
    );
    var labels =['مبدل','ایسیوکیت','اسیلوسکوپ','پراگرامر','لوازم جانبی'];

    return Scaffold(/*appBar: AppBar(centerTitle: true,title: Text(' فروشگاه',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
      IconButton(
        icon: Icon(Icons.shop,color: Colors.black45,),
      ),
      IconButton(
        icon: Icon(Icons.search,color: Colors.blueGrey[600],),
        onPressed: ()=>(Navigator.pushNamed(context, '/eleven')
        ),),

    ], ),*/
        bottomNavigationBar: ShopBottomNavigator(),
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.deepPurple[500],child: Icon(Icons.add),
          onPressed: ()=>(Navigator.pushNamed(context, '/third')

          ),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(child: ListView(children: <Widget>[ ListTile(
          leading: CircleAvatar(backgroundImage:  NetworkImage("https://i1.wp.com/codesundar.com/wp-content/uploads/2019/08/cropped-codesundar-favicon.png")),
          title: Text("Mina"),
          subtitle: Text(""),
        ),
          ListTile(leading: Icon(Icons.home), title: Text("Home")),
          ListTile(leading: Icon(Icons.grid_on), title: Text("Products")),
          ListTile(leading: Icon(Icons.contacts), title: Text("Contact Us")),

        ],),),

        body: new ListView(

          children:<Widget>[
            //customAppBar1(),
            customAppBar(),
            Container(height: 5.0,),
            image_carousel,

            new Padding(padding: const EdgeInsets.all(18.0),
              child: new Text('دسته بندی', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0)),
            ),
            Container(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:  labels.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: 160.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
//                              Color(0xFFD45253),
//                              Color(0xFF9E1F28),
                            Colors.pinkAccent[200],
                              Colors.pinkAccent[400],
                            ]
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF9E1F28),
                            offset: Offset(0.0,0.2),
                            blurRadius: 6.0,
                          )
                        ]
                    ),
                    child: Center(child: Text(labels[index],style: TextStyle(fontSize: 16.0),),),
                  );
                },
              ),

            ),




           /* //padding widget
            new Padding(padding: const EdgeInsets.all(18.0),
            child: new Text('دسته بندی', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0)),
            ),
            // listscroll

            HorizontalList(),*/

            new Padding(padding: const EdgeInsets.all(18.0),
              child: new Text('محصولات', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0)),
            ),
            Container(
              height: 320.0,
              child: Products(),
            ),


          ]
        )
    );
  }

}

class customAppBar1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color:Colors.pink[500],
      padding: EdgeInsets.fromLTRB(24, 36, 24, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.menu,size: 32,color: Colors.white,),
              Text('طراحان نوین مدار',style: TextStyle(fontSize: 18.0),),
              Icon(Icons.shopping_cart,size: 32,color: Colors.white,),
            ],
          ),
          //SizedBox(height: 28,),
          searchBox(),

        ],
      ),
    );;
  }

}

Widget customAppBar(){
  return Container(
    color:Colors.pink[500],
    padding: EdgeInsets.fromLTRB(24, 36, 24, 24),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.menu,size: 32,color: Colors.white,),
            Text('طراحان نوین مدار',style: TextStyle(fontSize: 18.0),),
            Icon(Icons.shopping_cart,size: 32,color: Colors.white,),
          ],
        ),
        SizedBox(height: 28,),
        searchBox(),

      ],
    ),
  );
}

class searchBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      textAlign: TextAlign.right,
      //controller: null,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'محصول مورد نظر',
        hintStyle: TextStyle(fontSize: 18,color:Colors.black12),
        //prefixIcon:Icon(Icons.search,size: 18,color: Colors.black12,),//*********************************************
        prefixIcon:IconButton(
        icon: Icon(Icons.search,color: Colors.blueGrey[600],),
        onPressed: ()=>(Navigator.pushNamed(context, '/eleven')
        ),),

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(36.0),
            borderSide: BorderSide(
              width: 0.0,
              style: BorderStyle.none,
            )
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16),
        fillColor: Colors.white,

      ),
    );
  }


}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search App"),
        actions : <Widget>[
          IconButton(icon:Icon(Icons.search), onPressed: (){})

        ],
      ),
    );
  }
}




//mina

/*class  Search_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text(' Search ')
            ),
            body: Center(
                child: ListSearch()
            )
        )
    );
  }*/


