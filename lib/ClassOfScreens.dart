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








class EightScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EightScreen1();
  }

}
/*class EightScreen1 extends State<EightScreen> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'login',
      child: Scaffold(appBar: AppBar(centerTitle: true,title: Text('پروفایل',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
        IconButton(icon: Icon(Icons.person,color: Colors.black45,),)], ),

      //    bottomNavigationBar: LoginPage()
      ),
    );
  }
}*/
class EightScreen1 extends State<EightScreen>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,title: Text('پروفایل',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'ورود/ثبت نام',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'نام کاربری',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'رمز',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('رمز خود را فراموش کرده ام ؟'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('ورود'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('هنوز ثبت نام نکرده ام'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'ثبت نام',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
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

        bottomNavigationBar: Search_Bar());
  }
}

