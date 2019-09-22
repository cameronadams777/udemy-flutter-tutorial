import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeHandler;

  TextControl(this.changeHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text('Change'), onPressed: changeHandler);
  }
}
