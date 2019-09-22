import 'package:flutter/material.dart';
import 'dart:math';

import './main-app.dart';

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _appText = 'Starting text!';

  final _textOptions = const [
    'This is a text option',
    'This is another text option',
    'These are randomly selected',
    'Displaying another value'
  ];

  void changeText() {
    var rng = new Random();
    var randomIndex = rng.nextInt(_textOptions.length);
    setState(() {
      _appText = _textOptions[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Assignment'),
            ),
            body: MainApp(_appText, changeText)));
  }
}
