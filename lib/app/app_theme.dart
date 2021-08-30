import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static ThemeData get theme => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SF Pro Display',
        appBarTheme: const AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 24.0,
            ),
          ),
        ),
      );
}
