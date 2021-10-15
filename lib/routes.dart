
import 'package:flutter/cupertino.dart';
import 'package:cat_app/pages/Login.dart';
import 'package:cat_app/pages/Register.dart';
import 'package:cat_app/pages/Dashboard.dart';
import 'package:cat_app/pages/Settings.dart';
import 'package:cat_app/pages/Profile.dart';
final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Register.routeName:(BuildContext context) => Register(),
  Dashboard.routeName:(BuildContext context) => Dashboard(),
  Settings.routeName:(BuildContext context) => Settings(),
  Profile.routeName:(BuildContext context) => Profile()
};