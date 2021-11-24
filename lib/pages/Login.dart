
import 'package:cat_app/pages/ForgotPassword.dart';
import 'package:cat_app/pages/Register.dart';
import 'package:cat_app/pages/Dashboard.dart';
import 'package:cat_app/services/AuthService.dart';
import 'package:cat_app/services/LocalStorageService.dart';
import '../widgets/PrimaryButton.dart';
import '../widgets/SecondaryButton.dart';
import '../widgets/CustomTextFormField.dart';
import '../widgets/PasswordField.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  static  String routeName = "/login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthService authService = AuthService();
  bool _obscureText = true;
  bool isLogginIn = false;

  @override
   Widget build(BuildContext context) {
     return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isLogginIn,
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
                        obscureText: _obscureText,
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        labelText: "Password",
                        hintText: "Enter your password",
                        controller: TextEditingController()),
                    SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                        text: "Login",
                        iconData: FontAwesomeIcons.doorOpen,
                        onPress: () {
                          //authenticate here
                          Get.offNamed(Dashboard.routeName);
                        }),
                    SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                        text: "Sign-in with Google",
                        iconData: FontAwesomeIcons.google,
                        onPress: login),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SecondaryButton(
                            text: "New User? Register",
                            onPress: () {
                              Get.offNamed(Register.routeName);
                            }),
                        SecondaryButton(
                            text: "Forgot Password?",
                            onPress: () {
                              Get.toNamed(ForgotPassword.routeName);
                            }),
                      ],
                    ),
                  ],
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
login() async {
    try {
      setState(() {
        isLogginIn = true;
      });
      var user = await authService.signInWithGoogle();
      if (user == null) {
        print("Invalid user crendentials");
        return;
      }

      LocalStorageService.setName(user.user.displayName);
      LocalStorageService.setUid(user.user.uid);

      Get.offNamed(Dashboard.routeName);
    } catch (e) {
      print(e.toString());
    }

    setState(() {
      isLogginIn = false;
    });
  }
}
