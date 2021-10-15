import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  static const routeName = "settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Settings',
          style: TextStyle(fontSize: 20.0),),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
    );
  }
}