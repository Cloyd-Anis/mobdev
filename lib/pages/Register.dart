import 'package:cat_app/mixins/ValidationMixin.dart';
import 'package:cat_app/pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:cat_app/widgets/CustomTextFormField.dart';
import 'package:cat_app/widgets/PasswordField.dart';
import 'package:cat_app/widgets/PrimaryButton.dart';
import 'package:cat_app/widgets/SecondaryButton.dart';

class Register extends StatefulWidget {
  static const String routeName = "register";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with ValidationMixin {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
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
          "Registration Page",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                   SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormfield(
                      labelText: "First Name",
                      hintText: "First Name",
                      iconData: Icons.person,
                      textEditingController: emailTextController,
                      textInputType: TextInputType.emailAddress,
                      validation: validateEmail),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormfield(
                      labelText: "Last Name",
                      hintText: "Last Name",
                      iconData: Icons.person,
                      textEditingController: emailTextController,
                      textInputType: TextInputType.emailAddress,
                      validation: validateEmail),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormfield(
                      labelText: "Email Address",
                      hintText: "Enter a valid email",
                      iconData: Icons.email,
                      textEditingController: emailTextController,
                      textInputType: TextInputType.emailAddress,
                      validation: validateEmail),
                  SizedBox(
                    height: 20.0,
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
                  // PasswordField(
                  //     labelText: "Confirm Password",
                  //     hintText: "Enter your password",
                  //     obscureText: obscureText,
                  //     textEditingController: confirmPasswordTextController,
                  //     onTap: () {
                  //       setPasswordVisiblity();
                  //     },
                  //     validation: validatePassword),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  PrimaryButton(
                      text: "Register",
                      iconData: Icons.app_registration_rounded,
                      onPress: register),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondaryButton(
                          text: "Already have an Account? Login",
                          onPress: () {
                            navigateLogin(context);
                          }),
                      SecondaryButton(text: "Forgot Password", onPress: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }



void register(){
    if(formKey.currentState.validate()){
      print("Valid inputs");
    }else{
      print("Invalid input");
    }
}

  void setPasswordVisiblity() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  void navigateLogin(BuildContext context) {
    Navigator.pushNamed(context, Login.routeName);
  }
}
