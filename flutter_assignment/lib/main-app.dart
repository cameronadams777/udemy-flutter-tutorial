import 'package:flutter/material.dart';

import './text-control.dart';

class MainApp extends StatelessWidget {
  final String appText;
  final Function changeHandler;

  MainApp(this.appText, this.changeHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        appText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      TextControl(changeHandler)
    ]));
  }
}
