import 'package:cat_app/pages/Dashboard.dart';
import 'package:cat_app/pages/Login.dart';
import 'package:cat_app/services/LocalStorageService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import './routes.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await LocalStorageService.initialize();
  runApp(GetMaterialApp(
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
    getPages : routes,
    initialRoute: LocalStorageService.isUserLoggedIn()
        ? Dashboard.routeName
        : Login.routeName,
  ));
}