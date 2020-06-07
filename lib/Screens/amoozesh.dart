


import 'dart:io';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mainappstore1/Screens/configuration.dart';
//import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import 'gallery/gallery_example.dart';



class Amoozesh extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AmoozeshState();
  }

}
class AmoozeshState extends State<Amoozesh> {
  final String txt = 'شرکت مهندسی طراحان نوین مدار در راستای تحقق درخواست های مشتریان محترم محصولات خود به ویژه پرو گرامرهای خودرویی و یونیورسال  با بهره گیری از همکاری اساتید برجسته سازمان فنی و حرفه ای  استان تهران اقدام به برگزاری دوره های آموزشی ایسیوکیت نموده است. در گام نخست از متقاضیان جهت شرکت در دوره 6 ساعته تور تی ان ام ثبت نام به عمل می اید وپس از تعیین سطح از دانشجویان توسط اساتید متقاضیان می توانند در دوره کامل 32 ساعته تعمیرات ایسیو ثبت نام  نموده و با شرکت در این دوره ها پس از برگزاری آزمون  موفق به دریافت گواهینامه تکنسینی تعمیرات ایسیواز شرکت مهندسی طراحان نوین مدار  گردند. هدف شرکت مهندسی طراحان نوین مدار از برگزاری این دوره های آموزشی انتفاعی نبوده و شهریه های دریافتی حد اقل می باشند و تنها صرف تامین  هزینه های جاری برگزاری کلاسها مانند مکان برگزاری –خوابگاه- تغذیه-حق الزحمه اساتید- خرید تجهیزات و …  خواهند شد. جهت اطلاع از جزییات برگزاری دوره ها با تلفن های دفتر پشتیبانی 66942785 -66577017 تماس حاصل فرمایید .';


  @override
  Widget build(BuildContext context) {
    /*return Container(
      height: double.infinity,
      color: Colors.grey,
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.home),),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Icon(Icons.home),
                Icon(Icons.home),
                Icon(Icons.home),
              ],
            ),
          )
      )
    );*/
    return Material(
          child: ListView(
            children: <Widget>[
             /* Container(
                color: Color.fromRGBO(253, 217, 105, 1.0),
                height: 100.0,
                child: Container(
                    child: Text('hi'),
                    ),
                    ),*/
              DefaultTabController(
                 length: 2,
                 initialIndex: 0,
                 child: Column(
                    children: <Widget>[
                       TabBar(
                        tabs: <Widget>[
                          Tab(
                            child: Text('محتوای دوره',style: TextStyle(color: Colors.black),),
                          ),
                          Tab(
                            child: Text('معرفی',style: TextStyle(color: Colors.black),),
                          ),


                       ],

                    ),
                        Container(
                            height:MediaQuery.of(context).size.height,
                            child: TabBarView(
                            children: <Widget>[
                                GalleryExample(),
                                Container(
                                  color: Colors.grey.withOpacity(0.2).withBlue(84),
                                  padding: EdgeInsets.only(top: 50.0,left: 50,right: 50.0),
                                  child: Text(txt,textAlign: TextAlign.right,softWrap: true,overflow: TextOverflow.clip,),
                                ),

                             ],
                            ),
                         )
                    ],
                    ),
                    )
                    ],
                    ),

    );
  }
}



