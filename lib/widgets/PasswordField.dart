import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController textEditingController;
  final bool obscureText;
  final Function onTap;
  PasswordField(
      {@required this.labelText,
      @required this.hintText,
      @required this.textEditingController,
      @required this.obscureText,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(Icons.lock),
      ),
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          ),
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
