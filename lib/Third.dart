import 'package:flutter/material.dart';
import './ques.dart';
import './answer.dart';

class MyQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyQuizState();
  }
}

class MyQuizState extends State<MyQuiz> {
  final questions = [
    {
      "questiontext": "who is your best friend",
      "answers": ["WALE", "BENJAMEN", "JOSHUA"]
    },
    {
      "questiontext": "which football team dO you support",
      "answers": ["MANCHESTER", "CHELSEA", "ARSENAL"]
    },
    {
      "questiontext": "what is your best colour",
      "answers": ["RED", "BLUE", "GREEN"]
    }
  ];
  var questionindex = 0;
  void answeredquestion() {
    setState(() {
      questionindex += 1;
    });
    print(questionindex);
    if (questionindex < questions.length) {
      print('we other questions');
    } else {
      print('NO MORE QUESTION ');
    }
  }

  /*
    print("answer chosen");*/

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "MY QUIZ APP",
          ),
          centerTitle: true,
        ),
        body: questionindex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[questionindex]["questiontext"],
                  ),
                  ...(questions[questionindex]["answers"] as List<String>)
                      .map((answers) {
                    return Answer(answeredquestion, answers);
                  }).toList(),
                  Container(
                    child: Icon(Icons.book),
                    color: Colors.red,
                  ),
                ],
              )
            : Center(
                child: Text('YOUR RESPOND HAS BEEN RECORDED'),
              ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => MyQuiz(), child: Icon(Icons.home)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
