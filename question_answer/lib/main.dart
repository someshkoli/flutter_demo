import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: QuizPage(),
    ));
  }
}

class QuizPage extends StatefulWidget {
  @override
  QuizPageState createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  dynamic questions = [
    {"question": "question1", "ans": "true"},
    {"question": "question2", "ans": "false"},
    {"question": "question3", "ans": "true"},
  ];
  int question_number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question_number < questions.length
                    ? questions[question_number]['question']
                    : "questions eneded",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (questions[question_number]['ans'] == 'true') {
                    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                  }
                  // if (question_number + 1 != questions.length()) {
                  question_number++;
                  // }
                });
                print(question_number);
                print(scoreKeeper);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (questions[question_number]['ans'] == 'false') {
                    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                  }
                  // if (question_number + 1 != questions.length()) {
                  question_number++;
                  // }
                });
                print(question_number);
                print(scoreKeeper);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.blue,
              child: Text(
                'Reset Questions',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  question_number=0;
                  scoreKeeper.clear();
                  // }
                });
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
