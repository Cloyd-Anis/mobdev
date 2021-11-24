import 'package:cat_app/pages/Login.dart';
import 'package:cat_app/pages/Register.dart';
import 'package:cat_app/pages/Dashboard.dart';
import 'package:cat_app/pages/Settings.dart';
import 'package:cat_app/pages/Profile.dart';
import 'package:cat_app/pages/ForgotPassword.dart';
import 'package:get/get.dart';


final List<GetPage<dynamic>> routes = [
  GetPage(name: Login.routeName, page: () => Login()),
  GetPage(name: Dashboard.routeName, page: () => Dashboard()),
  GetPage(name: Register.routeName, page: () => Register()),
  GetPage(name: Settings.routeName, page: () => Settings()),
  GetPage(name: Profile.routeName, page: () => Profile()),
  GetPage(
      name: ForgotPassword.routeName, page: () => ForgotPassword())
];
