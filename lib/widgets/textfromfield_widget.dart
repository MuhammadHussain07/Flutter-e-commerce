import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFromField extends StatelessWidget {
  final String hintText;
  bool obsecureText = false;
  MyTextFromField(this.hintText, this.obsecureText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: obsecureText,
        decoration: InputDecoration(
            fillColor: Colors.grey[100],
            hintText: hintText,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}
