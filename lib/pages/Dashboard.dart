import 'dart:convert';
import 'package:cat_app/pages/Profile.dart';
import 'package:cat_app/pages/Login.dart';
import 'package:cat_app/pages/Settings.dart';
import 'package:cat_app/models/ImageModel.dart';
import 'package:flutter/material.dart';
import 'package:cat_app/widgets/ImageList.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' show get;

class Dashboard extends StatefulWidget {
  static  String routeName = "/dashboard";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int count = 1;
  List<ImageModel> images = [];
  var items = ['Profile', 'Setting', 'Logout'];
  static const String url = "thatcopy.pw";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to Dashboard!",
          style: TextStyle(fontSize: 20.0),
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text('Settings'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('Profile'),
              ),
           
            ],
          ),
        ],
      ),
      body: ImageList(images),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add),
      ),
    );
  }

  void increment() {
    setState(() {
      count += 1;
    });
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        //Navigator.pushNamed(context, Settings.routeName);
        Get.toNamed(Settings.routeName);
        break;
      case 1:
        //Navigator.pushNamed(context, Profile.routeName);
         Get.toNamed(Profile.routeName);
        break;
    }
  }

  void fetchImage() async {
    increment();
    String path = "catapi/restId/$count";
    try {
      var response = await get(Uri.https(url, path));
      dynamic parsedJSON = json.decode(response.body);
      ImageModel imageModel = ImageModel.fromJSON(parsedJSON);
      images.add(imageModel);
    } catch (e) {}
  }
}
