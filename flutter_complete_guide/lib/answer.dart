import 'dart:math';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final colors = const [
    Colors.blue,
    Colors.red,
    Colors.indigo,
    Colors.amber,
    Colors.black
  ];
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  Color get buttonColor {
    var rng = new Random();
    var randomIndex = rng.nextInt(colors.length);
    return colors[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: buttonColor,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
