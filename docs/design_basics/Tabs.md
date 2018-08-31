Tabs 使用选项卡是常用的

1.创建TabController：保持选定的选项卡和内容保持同步。

   new DefaultTabController(
      length: 3,//需要显示的选项卡的数量。
   )
   
   
2.创建Tabs
   new DefaultTabController(
      length: 3,
      child: Scaffold(
         appBar: AppBar(
            bottom: TabBar(
               tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
               ]
            )
         )
      )
   )
3.为每个Tabs创建内容
  TabBarView(
    childen: [
       Icon(Icons.directions_car),
       Icon(Icons.directions_transit),
       Icon(Icons.directions_bike),
    ]
  )