import 'package:flutter/material.dart';
class CustomTextFormfield extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  

  CustomTextFormfield(
    {@required this.labelText,
    @required this.hintText,
    @required this.iconData,
    @required this.textEditingController,
    @required this.textInputType});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(iconData),
        ), 
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
    );
  }
}