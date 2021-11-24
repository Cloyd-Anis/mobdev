import 'package:cat_app/pages/Login.dart';
import 'package:cat_app/services/AuthService.dart';
import 'package:cat_app/services/LocalStorageService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Settings extends StatefulWidget {
  static  String routeName = "/settings";

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: ElevatedButton(
            onPressed: () async {
              await authService.logout();
              LocalStorageService.setName("");
              LocalStorageService.setUid("");
              Get.offAllNamed(Login.routeName);
            },
            child: Text("Logout"),
          ),
        ),
      ),
    );
  }
}
