import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:cat_app/pages/Login.dart';
import 'package:cat_app/pages/Register.dart';
final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Register.routeName:(BuildContext context) => Register()
};