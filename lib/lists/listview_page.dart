import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  final String title;

  ListViewDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text(title),
      ),
//      body: ListView(
//        children: <Widget>[
//          ListTile(
//            leading: Icon(Icons.email),
//            title: Text('Email'),
//          ),
//          ListTile(
//            leading: Icon(Icons.phone),
//            title: Text('Phone'),
//          ),
//          ListTile(
//            leading: Icon(Icons.content_paste),
//            title: Text('node book'),
//          ),
//
//        ],
//      ),
    body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'IIIII$index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }))
    );
  }
}
