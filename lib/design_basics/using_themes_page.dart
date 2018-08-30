import 'package:flutter/material.dart';

class UsingThemes extends StatelessWidget {
  final String title;

  UsingThemes({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            'Text with a background color',
            style: customThemeData.textTheme.title,
          ),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: FloatingActionButton(
            onPressed: () {
              print('Using themes');
            },
            child: Icon(Icons.add),
          )),
    );
  }
}

///声明的自定义主题
ThemeData get customThemeData => new ThemeData(
      primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
      primaryIconTheme: IconThemeData(color: Colors.white),
      primaryColor: const Color(0xff3669e0),
      accentColor: const Color(0xff63a4ff),
      accentIconTheme: new IconThemeData(color: Colors.white),
      iconTheme: new IconThemeData(color: const Color(0xff444954)),
      indicatorColor: const Color(0xff3669e0),
      backgroundColor: const Color(0xfff9f9f9),
      scaffoldBackgroundColor: const Color(0xfffafafa),
      textTheme: TextTheme(
        title: TextStyle(color: const Color(0xff444954)),
        subhead: TextStyle(color: const Color(0xff939aa3)),
      ),
      errorColor: const Color(0xfff03030),
      dividerColor: const Color(0xffd2d7dc),
      hintColor: const Color(0xffbcc2cc),
    );
