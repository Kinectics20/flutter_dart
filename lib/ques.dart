import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questiontext;
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(questiontext,
          style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      color: Colors.green,
    );
  }
}
