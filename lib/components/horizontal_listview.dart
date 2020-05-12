import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black12,
      height: 88.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/cat/5000-1.png',
              image_caption: 'پروگرامر'
          ),
          Category(
              image_location: 'images/cat/6664.png',
              image_caption: 'ایسیوکیت'
          ),
        Category(
              image_location: 'images/cat/DSLR-800.png',
              image_caption: 'اسیلوسکوپ'
          ),
          Category(
              image_location: 'images/cat/DSLR-800-2.png',
              image_caption: 'مبدل'
          ),
          Category(
              image_location: 'images/cat/5000-1.png',
              image_caption: 'لوازم جانبی'
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;

  const Category({Key key, this.image_location, this.image_caption}) : super(key: key);
  //category({this.image_location, this.image_caption});//kar nakard
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption)
            ),
          ),
        ),
      ),
    );
  }
}