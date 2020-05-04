import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;
  final ThemeMode themeMode;
  final void Function(ThemeMode themeMode) changeTheme;

  const HomePage({
    Key key,
    this.title,
    this.themeMode,
    this.changeTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => changeTheme(ThemeMode.system),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("System"),
                  _getIndicatorIcon(ThemeMode.system),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () => changeTheme(ThemeMode.dark),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Dark"),
                  _getIndicatorIcon(ThemeMode.dark),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () => changeTheme(ThemeMode.light),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Light"),
                  _getIndicatorIcon(ThemeMode.light),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getIndicatorIcon(ThemeMode iconThemeMode) {
    if (themeMode == iconThemeMode) return Icon(Icons.check);
    return Offstage();
  }
}
