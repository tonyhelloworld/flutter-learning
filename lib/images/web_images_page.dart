import 'package:flutter/material.dart';

class WebImages extends StatelessWidget {
  final String title;

  WebImages({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(
                'https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike272%2C5%2C5%2C272%2C90/sign=a1631ea3fb03918fc3dc359830544df2/f7246b600c33874429bc663f5d0fd9f9d72aa07c.jpg')
          ],
        ),
      ),
    );
  }
}
