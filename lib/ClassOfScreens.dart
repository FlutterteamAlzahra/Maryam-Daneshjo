import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Login_Screen.dart';
import 'Search.dart';
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(centerTitle: true, title: Text(' محصولات', style: TextStyle(fontFamily: 'Bamshad', fontSize: 18, color: Colors.black45),),
      backgroundColor: Colors.white10,elevation: 0,actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,color: Colors.black45,),
          onPressed: (){},
        )
      ], ),

    );

  }

}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('افزودن به سبد خرید',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class ForthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('اخبار',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('قوانین',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class SixthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('درباره ما',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class SevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('خانه',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class EightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text('پروفایل',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
      IconButton(icon: Icon(Icons.person,color: Colors.black45,),)], ),

        bottomNavigationBar: LoginPage());
  }
}
class NineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('تماس با ما',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class TenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('لیست خرید های من',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}


class ElevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(centerTitle: true,title: Text('سرچ',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
      IconButton(icon: Icon(Icons.search,color: Colors.black45,),)], ),

        bottomNavigationBar: Search());
  }
}

