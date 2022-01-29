import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectoption;
  final answertext;
  Answer(this.selectoption, String this. answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answertext,
        ),
        onPressed: selectoption,
      ),
    );
  }
}
