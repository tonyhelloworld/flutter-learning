import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {

  final String title;
  SnackBarPage({Key key,this.title}) : super(key:key);
  var _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context){

    return Scaffold(
      key:_key,
      appBar: AppBar(
        title: Text(title),
      ),
      body:   Container(
        color: Colors.white,
        child: Center(
          child:  RaisedButton(
            onPressed: (){
              final snackBar =  SnackBar(
                content:  Text('Ya! A SnackBar!'),
                action:  SnackBarAction(
                    label: 'cancel',
                    onPressed: (){
                      // 撤销的代码
                    }
                ),
              );
              //Scaffold.of(context).showSnackBar(snackBar);
              _key.currentState.showSnackBar(snackBar);
            },
            child:  Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
