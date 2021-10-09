import 'package:cat_app/widgets/CustomTextFormField.dart';
import 'package:cat_app/widgets/PasswordField.dart';
import 'package:cat_app/widgets/PrimaryButton.dart';
import 'package:cat_app/widgets/SecondaryButton.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String routeName ="login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CustomTextFormfield(
                  labelText: "Email Address",
                  hintText: "Enter a valid email", 
                  iconData: Icons.email,
                  textEditingController: emailTextController,
                  textInputType: TextInputType.emailAddress),
                SizedBox(
                  height:20.0,
                ),
                PasswordField(
                  labelText: "Password",
                  hintText:"Enter your password",
                  obscureText: obscureText,
                  textEditingController: passwordTextController,
                  onTap: (){}
                ),
                SizedBox(
                  height:20.0,
                ),
                PrimaryButton(text:"Login",iconData: Icons.login,onPress:(){}),
                SizedBox(
                  height:20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SecondaryButton(text: "New User? Register", onPress: (){}),
                    SecondaryButton(text:"Forgot Password",onPress: (){}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void setPasswordVisiblity(){
    setState(() {
      obscureText = !obscureText;
    });
  }
}
