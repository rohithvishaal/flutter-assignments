// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/textControl.dart';
import './text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final text = [
    "Max is the best Instructor!",
    "What's your Favourite Anime?",
    "What's your favourite Anime Character?",
    "Do you think AI will take over the world?!",
    "Are we living in the Matrix?",
    "Are we the advanced version of SIIMS?",
    "Follow my page @linux_everyday on instagram!!"
  ];
  int textIndex = 0;
  void changeText() {
    setState(() {
      textIndex += 1;
      if (textIndex >= text.length) textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Random Text!',
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 40.0),
          margin: EdgeInsets.all(30),
          child: Column(children: <Widget>[
            ShowText(text[textIndex]),
            TextControl(changeText),
          ]),
        ),
      ),
    );
  }
}
