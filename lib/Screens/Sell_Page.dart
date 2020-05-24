import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutterappproject/Search.dart';

void main() => runApp(MaterialApp(
  home: SellPage(),
  debugShowCheckedModeBanner: false,
));

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => (Navigator.pushNamed(context, '/third')),backgroundColor: Colors.red,child: Icon(Icons.add),),
      body: Container(
        child: Stack(
          children: <Widget>[
            CustomBody(),
          ],
        ),
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomHeader(),
          Container(
            //color: Color(0xffdfe0e0) ,
            margin: EdgeInsets.only(top: 20),
            //color: Colors.red,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('پشتیبانی بیش از 23000 قطعه جدید',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('سوکت زیف 48 پایه',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('اتصال USB2 از نوع High Speed',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('سرعت بسیار بالا ( 10 مگابیت سریال و 8 مگابایت موازی در هر ثانیه)',style: TextStyle(fontSize: 16, color: Colors.black),),
                Text('دارای تستر اتصال صحیح پینهای قطعه به پروگرامر',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('بدون نیاز به تغذیه ( USB Powered)',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('کانکتور JTAG پیشرفته برای فلش کردن بدون در آوردن آی سی از مدار',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('حالت شبیه ساز پروگرامرهای تخصصی مانند آلترا',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('قابلیت استفاده از آداپتورهای مدلهای قدیمی تر',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('پشتیبانی ویندوزهای Windows7/8 (32-64)،VISTA،XP',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('نرم افزار با قابلیت فارسی سازی',style: TextStyle(fontSize: 16,color: Colors.black),),
                Text('ارتقاء رایگان نرم افزار از طریق اینترنت و 1 سال گارانتی',style: TextStyle(fontSize: 16,color: Colors.black),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(onPressed: () =>(Navigator.pushNamed(context, '/third')) ,disabledColor: Colors.black,child: Text('افزودن به سبد خرید', style: TextStyle(fontSize: 20, color: Colors.white),),elevation: 2.5,color: Color(0xffF5AD1A),)
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        HeaderBackground(),
        Container(
          //margin: EdgeInsets.only(bottom: 0),
          alignment: Alignment.center,
          height: 440,
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back, color: Color(0xffF5AD1A),),
                      onPressed: (){Navigator.pop(context);}),
                  IconButton(icon: Icon(Icons.local_grocery_store, color: Color(0xffF5AD1A),),
                      onPressed: null)
                ],
              ),
              SizedBox(height: 25),
              Spacer(),
              Text('پروگرامر مدل 5000', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: 22),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                width: 300,
                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors:[
                        Color(0xffcfcfc9),
                        Color(0xff41372D),
                        Color(0xffcfcfc9),
                      ]
                  ),
                ),
              ),

              Container(
                //color: Colors.deepPurple,
                margin: EdgeInsets.only(top: 5),
                child: Text('3,000,000تومان',style: TextStyle(fontSize: 18,color: Color(0xff41372D)),),
              ),


            ],
          ),
        ),
      ],
    );
  }
}
class HeaderBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[

        Container(
          width: 405,
          height: 190,
          margin: EdgeInsets.only(top: 275),
          decoration: BoxDecoration(
            //color: Colors.green,
              boxShadow:[
                BoxShadow(
                    blurRadius: 800, spreadRadius: 0, color: Color(0xffcfcfc9)
                )
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    //padding: EdgeInsets.only(right: 30),
                    margin: EdgeInsets.only(right: 3, ),
                    decoration: ShapeDecoration(
                      color: Color(0xffF5AD1A),
                      shape: CircleBorder(),
                      shadows: List(0)
                    ),
                    child: IconButton(icon: Icon(Icons.favorite), onPressed: () => (Navigator.pushNamed(context, '/third')),color: Colors.white,iconSize: 25,),
                  ),
                ],
              )
            ],
          ),
        ),
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            margin: EdgeInsets.only(top: 5),
            height: 450,
            color: Colors.white,
          ),
        ),
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/5000-1.png'), fit: BoxFit.none,
                ),color: Color(0xffcfcfc9)
            ),
          ),
        ),
      ],
    );
  }
}
class HeaderClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(sw, 0);
    path.lineTo(sw, sh);
    path.cubicTo(sw, sh * 0.7, 0, sh * 0.8, 0, sh * 0.55);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}






