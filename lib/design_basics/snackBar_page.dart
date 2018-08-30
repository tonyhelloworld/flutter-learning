import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _snackBaronPressed(),
      child: Text('Show  SnackBar'),
    );
  }

  _snackBaronPressed() {
    final snackBar = SnackBar(
      content: Text('Ya! Show a SnackBar!'),
      action: SnackBarAction(label: 'cancel', onPressed: (){
        //撤销的代码
      }),

    );
  }
}
