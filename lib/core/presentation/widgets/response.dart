import 'package:flutter/material.dart';

class AppResponse {
  const AppResponse._();

  static index(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontFamily: "SF Pro Display",
      ),
    );
  }
}
