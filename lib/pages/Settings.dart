import 'package:flutter/material.dart';

import 'package:cat_app/widgets/PasswordField.dart';
import 'package:cat_app/widgets/PrimaryButton.dart';

import 'package:cat_app/mixins/ValidationMixin.dart';

class Settings extends StatefulWidget {
  static const String routeName = "settings";

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with ValidationMixin {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 20.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold
                      ),
                    ),
                ),
                PasswordField(
                    labelText: "Password",
                    hintText: "Enter your password",
                    obscureText: obscureText,
                    textEditingController: passwordTextController,
                    onTap: () {
                      setPasswordVisiblity();
                    },
                    validation: validatePassword),
                SizedBox(
                  height: 20.0,
                ),
                PasswordField(
                    labelText: "Confirm Password",
                    hintText: "Enter your password",
                    obscureText: obscureText,
                    textEditingController: confirmPasswordTextController,
                    onTap: () {
                      setPasswordVisiblity();
                    },
                    validation: validatePassword),
                SizedBox(
                  height: 20.0,
                ),
                PrimaryButton(
                    text: "Confirm",
                    iconData: Icons.app_registration_rounded,
                    onPress: changePass),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void changePass() {
    if (formKey.currentState.validate()) {
      print("Valid inputs");
    } else {
      print("Invalid input");
    }
  }

  void setPasswordVisiblity() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
