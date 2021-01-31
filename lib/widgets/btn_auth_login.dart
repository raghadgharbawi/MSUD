import 'package:flutter/material.dart';

Widget btnAuthLogin({String title, Function action}) {
  return OutlineButton(
      onPressed: action,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      borderSide: BorderSide(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ));
}
