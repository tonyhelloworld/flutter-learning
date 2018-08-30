在某些情况下，需要方便简短地通知用户。例如当用户删除列表的消息的时候，我们希望通知这个操作。

在flutter中Material Design。SnackBar就发挥重要的作用了

1.创建Scaffold
Material中的Scaffold部件提供了这个可视化结构

  new Scaffold(
     appBar: AppBar(
       title: Text('SnackBar Demo'),
     ),
     body: SnackBarPage(),
  )


2.显示SnackBar
创建一个SnackBar

  final snackBar = new SnackBar(context: Text('yay! success!'));


  Scaffold.of(context).showSnackBar(snackBar);

3.提供额外的操作
在某些情况下，我们需要撤销无意删除的一条消息，我们可以提供一个操作来撤销

为了实现这个，我们向snackBar部件提供了一个action


  final snackBar = new SnackBar(
     context: Text('YAY! success!'),
     action: SnackBarAction(
        label: 'cancel',
        onPressed: (){
          // 撤销的代码
          }
        },
     ),
  );