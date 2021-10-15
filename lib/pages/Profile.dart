import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  static const routeName = "profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Profile',
          style: TextStyle(fontSize: 20.0),),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
    );
  }
}