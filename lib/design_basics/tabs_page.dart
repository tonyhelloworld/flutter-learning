import 'package:flutter/material.dart';



class TabsPage extends StatelessWidget {

  final String title;
  TabsPage({Key key,this.title}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_car),),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),)
          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
      ),
    );
  }
}
