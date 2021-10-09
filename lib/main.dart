import 'package:cat_app/pages/Login.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme:ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green[500],
      accentColor: Colors.yellow[700],
      textTheme: TextTheme(
        headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 72.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 18.0),
      ),
    ),
    home: Login(),
  ));
}