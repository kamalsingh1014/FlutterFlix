import 'package:flutter/material.dart';

class FlutterInterviewQuestions{

  List<QuestionModel> questionList = [
    QuestionModel(
        terminologyId: 1, terminology: "Flutter",
        questionId: 1, question: "What is flutter?",
        answerId:1, answer: "Flutter is an open source UI development framework created by google.   "
        "It allows developer to build natively compiled application for Android ,Ios , Web and Desktop"
        "from a single codebase using the dart programming language."
        "Key Features of Flutter "
            "1. Hot Reload :- Makes it easy to experiment , building UI's and bug fixes"
            "2. Single Codebase :-  Write code and run on multiple platforms"
            "3. Rich Sets of Widgets :- Helps in creating beautiful UIs"
            "4. High Performance : -Compiles to native ARM(CPU architectures in Smart Phone) code"),
    QuestionModel(terminologyId: 1,
        terminology : "Flutter",
   questionId: 2,
    question :   "Explain Stateless vs Stateful Widget",
    answerId: 2, answer :"In Flutter, widgets are building blocks of UI."
            "1. Stateless Widget"
            "It doesn't change  during runtime."
            "It is used when UI doesn't depend on dynamic data."
            "2. Stateful Widget"
            "It can change it's state during runtime."
            "It can be used when the UI needs to be updated which based on user interaction or async data."
            ""),
    QuestionModel(terminologyId: 1, terminology: "Flutter",
        questionId: 3, question: "Difference between Hot reload and Hot Restart?",
        answerId: 3, answer: ""
        "Hot reload injects code into the running app and Hot restart restart the app from the main()"
        "Hot reload preserves the widget and Hot restart resets the widget state."
        "Hot relead is much faster than the Hot restart."
        "Hot reload u=is used when changes occurs in UI or small logic updates"
        "whereas hot restart is used when we make changes in main() or need a clean state."),
      QuestionModel(terminologyId: 1, terminology: "Flutter",
          questionId: 4, question: "What is BuildContext in Flutter?",
          answerId: 4, answer: ""
          "BuildContext is a handle to the location of widget in the widget tree."
          "It can be used to access theme , MediaQuery , Navigator etc. by using "
          "ThemeData theme = Theme.of(context)"
          "final width = MediaQuery.of(context).size.width;"
          "It also used in finding the nearest widget of specific type by using "
          "context.finAncestorWidgetOfExactType()"
          ""
          ""),
    QuestionModel(terminologyId: 1, terminology: "Flutter",
        questionId: 5, question: "What is the difference between Navigator.push and Navigator.pushReplacement?",
        answerId: 5, answer: ""
        "Navigator.push : It will  push a new route on  top of the navigation stack."
        "Navigator.pushReplacement : It replaced the current route with a new route"
        ""),
    QuestionModel(terminologyId: 1,
        terminology: "Flutter",
        questionId: 6,
        question: "What is Future and FutureBuilder?",
        answerId:6 , answer: ""
            "Future is a value that will be available in the future after some async operations completed"
            "Future Builder is widget that waits for the future and builds UI based on it's states "
            "like Loading , Completion , Error"
            ""),
    QuestionModel(terminologyId: 1,
        terminology: "Flutter",
        questionId: 7,
        question: "How does setState() work?",
        answerId: 7, answer: ""
            "setState(){} is used to notify the flutter framework that the internal state of a widget has changed and "
            "the widget needs to be rebuilt."
            "")
  ];
}

class QuestionModel{
    int terminologyId;
    String terminology;
    String question;
    String answer;
    int questionId;
    int answerId;
    QuestionModel({required this.terminologyId,required this.terminology,
      required this.questionId,required this.question,required this.answerId,required this.answer});
}