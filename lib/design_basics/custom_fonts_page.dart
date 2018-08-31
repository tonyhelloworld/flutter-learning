import 'package:flutter/material.dart';

class CustomFontsPage extends StatelessWidget {
  var _key = GlobalKey<ScaffoldState>();
  final String title;
  CustomFontsPage({Key key,this.title}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Roboto Mono fonts',style: TextStyle(fontFamily: 'RobotoMono'),),
      ),
    );
  }
}
