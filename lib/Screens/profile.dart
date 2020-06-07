import 'package:flutter/material.dart';
import 'package:getflutter/components/search_bar/gf_search_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileState();
  }

}
class ProfileState extends State<Profile>{
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            GFSearchBar(
              hideSearchBoxWhenItemSelected: true,
              noItemsFoundWidget: Text('l,vn '),
              searchList: list,
              searchQueryBuilder: (query, list) {
                return list
                    .where((item) =>
                    item.toLowerCase().contains(query.toLowerCase()))
                    .toList();
              },
              overlaySearchListItemBuilder: (item) {
                return Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 18),
                  ),
                );
              },
              onItemSelected: (item) {
                setState(() {
                  print('$item');
                });
              },

            ),
            SizedBox(height: 700,),
            BottomNavyBar(
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
          ],
        ),
      )
    );
  }
}