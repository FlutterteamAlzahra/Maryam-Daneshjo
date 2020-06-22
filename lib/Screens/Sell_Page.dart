import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'liked_page.dart';
class Screen1 extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen1> {
  int count = 1;
  int cost = 3000000;
  int total = 0;
  bool liked = false;
  String name = 'پروگرامر مدل 5000';
  //total = count * cost;
  PageController _pageController = PageController(viewportFraction: 0.3);
  int selectedIndex = 0;
  double selectedPage = 0;
  List<String> sizeList = [
    'S',
    'M',
    'L',
    'XL',
  ];

  List<String> listImage = [
    'images/i1.jpg',
    'images/i2.jpg',
    'images/i3.jpg',
    'images/i4.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfcfc9),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    //bottomRight: Radius.circular(50.0)
                  ),
                  color: Color(0xffcfcfc9),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color(0xffF5AD1A),
                              size: 30.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                            child: SizedBox(
                              width: 5,
                            )),
                        Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                //color: Color(0xFFB6B8C7),
                              ),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.shopping_basket,
                                    color: Color(0xffF5AD1A),
                                  ),
                                  onPressed: () => {}
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFffffff).withOpacity(0.7),
                            spreadRadius: 5,
                            blurRadius: 50,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/5000-1.png',
                        width: 200.0,
                        height: 300.0,
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                      child: Container(
                        height: 150.0,
                        //width: 3000,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: listImage.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              margin: selectedPage == index
                                  ? EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 0.0)
                                  : EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Image.asset(
                                listImage[index],
                                //width: 20,
                                //height: 20,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xffcfcfc9),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                        topRight: Radius.circular(40.0),
                        //topLeft: Radius.circular(50.0)
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                        topRight: Radius.circular(20.0),
                        //topLeft: Radius.circular(45.0)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(child: SizedBox()),

                              //SizedBox(width: 73),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '$name',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 75),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF5AD1A),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                          //topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0)
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: Icon(liked ? Icons.favorite : Icons.favorite,
                                        color: liked ? Colors.red : Colors.white, size: 27.0,
                                      ),
                                      onPressed: () => (setState((){
                                        liked = !liked;
                                      })),
                                    ),
                                  ),


                                ],
                              ),
                              //SizedBox(width: 120),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('تومان',style: TextStyle(fontSize: 14,color: Colors.black),),
                              Text('3,000,000',style: TextStyle(fontSize: 14,color: Colors.black),),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('پشتیبانی بیش از 23000 قطعه جدید',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('سوکت زیف 48 پایه',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('High Speed'+ ' '+'از نوع '+' '+'USB2'+' ' + 'اتصال',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('سرعت بسیار بالا ( 10 مگابیت سریال و 8 مگابایت موازی در هر ثانیه)',style: TextStyle(fontSize: 15, color: Colors.black),),
                                Text('دارای تستر اتصال صحیح پینهای قطعه به پروگرامر',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('( USB Powered)'+'بدون نیاز به تغذیه ',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('پیشرفته برای فلش کردن بدون در آوردن آی سی از مدار'+' JTAG '+'کانکتور',style: TextStyle(fontSize: 14,color: Colors.black),),
                                Text('حالت شبیه ساز پروگرامرهای تخصصی مانند آلترا',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('قابلیت استفاده از آداپتورهای مدلهای قدیمی تر',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('Windows7/8 (32-64)،VISTA،XP '+'پشتیبانی ویندوزهای',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('نرم افزار با قابلیت فارسی سازی',style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('ارتقاء رایگان نرم افزار از طریق اینترنت و 1 سال گارانتی',style: TextStyle(fontSize: 16,color: Colors.black),),


                                SizedBox(
                                  height: 20.0,
                                ),

                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    //SizedBox(width: 60.0,),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: Color(0xFFBABCCA),
                                        ),
                                      ),
                                      child: IntrinsicHeight(
                                        child: Row(
                                          children: <Widget>[
                                            IconButton(
                                              icon: Icon(Icons.remove),
                                              color: Colors.grey,
                                              onPressed: () => (setState((){
                                                count--;
                                              })),
                                            ),
                                            VerticalDivider(
                                              indent: 10.0,
                                              endIndent: 10.0,
                                              thickness: 1.0,
                                              color: Color(0xFFBABCCA),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(
                                              '$count',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            VerticalDivider(
                                              indent: 10.0,
                                              endIndent: 10.0,
                                              thickness: 1.0,
                                              color: Color(0xFFBABCCA),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.add),
                                              color: Colors.grey,
                                              onPressed: () => (
                                                  setState((){
                                                    count++;
                                                  })
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    /*Text(
                                      'تعداد',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),*/


                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'جمع هزینه' + ' ' + '${count*cost}' + ' تومان' ,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width/4,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
                        decoration: BoxDecoration(
                          color: Color(0xffF5AD1A),
                          borderRadius: BorderRadius.only(
                            //topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          'افزودن به سبد خرید',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        selectedPage = _pageController.page;
      });
    });
  }
}

class RibbonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 1);

    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width * 1, size.height * 1);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
