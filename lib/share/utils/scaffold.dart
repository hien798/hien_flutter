import 'package:flutter/material.dart';

final _scaffoldKey = new GlobalKey<ScaffoldState>();

void showInSnackBarErrorServer(String value) {
  _scaffoldKey.currentState!.showSnackBar(new SnackBar(
    duration: new Duration(seconds: 5),
    content: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[new Text(value)],
    ),
  ));
}

void showInSnackBar(String value) {
  ScaffoldMessenger.of(_scaffoldKey.currentState!.context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.white.withOpacity(0.5),
      duration: new Duration(seconds: 100000),
      content: InkWell(
        onHover: (value) {},
        child: Container(
          child: AlertDialog(
            content: Text(value),
            actions: [
              Container(
                height: 45,
                width: 70,
                child: ElevatedButton(
                  onPressed: () async {
                    ScaffoldMessenger.of(_scaffoldKey.currentState!.context!)
                        .hideCurrentSnackBar();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                  child: Center(
                    child: Text('OK'.toUpperCase()),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
