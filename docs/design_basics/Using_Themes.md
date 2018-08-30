一.使用Themes共享字体和颜色
   为了在整个应用中共享颜色和字样，我们可以利用主题。有两种方式来定义主题：使用Theme部件来定义应用程序的颜色和样式或者应用程序范围内的颜色和样式。其实应用范围内的主题是由MaterialAPP在我们的
   应用程序根部创建了Theme小部件

   扩展父主题

   new Theme(
    data: Theme.of(context).copyWith(accentColor: Colors.yellow),
    child: new FloatingActionButton(
      onPressed: (){},
      child: new Icon(Icons.add)
      )
   )
