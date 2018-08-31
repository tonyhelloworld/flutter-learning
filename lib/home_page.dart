import 'package:flutter/material.dart';
import 'package:learning/commons/simple_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffc0cb),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              SimpleCard(
                title: '使用主题',
                description: '使用Theme共享颜色和样式',
                titleColor: Colors.black,
                decriptionColor: Colors.black26,
                prefixBadge: Colors.red,
                suffixIcon: Icons.description,
                suffixIconColor: Colors.red,
                suffixBadge: Colors.red,
                icon: Icons.tag_faces,
                iconColor: Colors.red,
                backgroundColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pushNamed('/using_themes_page');
                },
              ),
              SimpleCard(
                title: '显示SnackBar',
                decriptionColor: Colors.black26,
                description: '简短方便的提示用户',
                titleColor: Colors.black,
                prefixBadge: Colors.lightGreen[200],
                suffixBadge: Colors.lightGreen[200],
                icon: Icons.scanner,
                iconColor: Colors.lightGreen[200],
                backgroundColor: Colors.white,
                onTap: (){
                  Navigator.of(context).pushNamed('/snackBar_page');
                },
              ),
              //Tabs
              SimpleCard(
                title: 'Tabs',
                decriptionColor: Colors.black26,
                description: '三个交通工具图标',
                titleColor: Colors.black,
                prefixBadge: Colors.lightGreen[200],
                suffixBadge: Colors.lightGreen[200],
                icon: Icons.scanner,
                iconColor: Colors.lightGreen[200],
                backgroundColor: Colors.white,
                onTap: (){
                  Navigator.of(context).pushNamed('/tabs_page');
                },
              ),
              SimpleCard(
                title: 'Custom Fonts',
                decriptionColor: Colors.black26,
                description: '切换字体',
                titleColor: Colors.black,
                prefixBadge: Colors.lightGreen[200],
                suffixBadge: Colors.lightGreen[200],
                icon: Icons.scanner,
                iconColor: Colors.lightGreen[200],
                backgroundColor: Colors.white,
                onTap: (){
                  Navigator.of(context).pushNamed('/custom_fonts_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
