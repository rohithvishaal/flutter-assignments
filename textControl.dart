import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;
  TextControl(this.changeText);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: RaisedButton(
        onPressed: changeText,
        child: Text(
          "Change text!",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.black,
      ),
    ));
  }
}
