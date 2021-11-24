import 'package:cat_app/mixins/ValidationMixin.dart';
import 'package:cat_app/pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:cat_app/widgets/CustomTextFormField.dart';
import 'package:cat_app/widgets/PasswordField.dart';
import 'package:cat_app/widgets/PrimaryButton.dart';
import 'package:cat_app/widgets/SecondaryButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
class Register extends StatefulWidget {
  static  String routeName = "/register";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with ValidationMixin {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextFormField(
                      labelText: "First Name",
                      hintText:
                          "First Name must have a minimum of 4 characters.",
                      iconData: FontAwesomeIcons.user,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormField(
                      labelText: "Last Name",
                      hintText:
                          "First Name must have a minimum of 4 characters.",
                      iconData: FontAwesomeIcons.user,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormField(
                      labelText: "Email",
                      hintText: "Enter a valid email.",
                      iconData: FontAwesomeIcons.solidEnvelope,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(
                      obscureText: _obscurePassword,
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      labelText: "Password",
                      hintText: "Enter your password",
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(
                      obscureText: _obscureConfirmPassword,
                      onTap: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                      labelText: "Confirm Password",
                      hintText: "Your passwords must match.",
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PrimaryButton(
                      text: "Register",
                      iconData: FontAwesomeIcons.solidFolder,
                      onPress: () {
                        print("Register button");
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondaryButton(
                          text: "Already have an account? Login",
                          onPress: () {
                            Get.offNamed(Login.routeName);
                          }),
                      SecondaryButton(
                          text: "Forgot Password?",
                          onPress: () {
                            //Get.toNamed(ForgotPassword.routeName);
                          }),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}