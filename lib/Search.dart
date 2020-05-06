import 'package:flutter/material.dart';
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
