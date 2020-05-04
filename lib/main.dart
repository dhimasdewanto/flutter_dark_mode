import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Mode',
      themeMode: _themeMode,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomePage(
        title: 'Flutter Dark Mode Home Page',
        themeMode: _themeMode,
        changeTheme: _changeTheme,
      ),
    );
  }
}
