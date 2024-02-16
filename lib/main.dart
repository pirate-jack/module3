import 'package:flutter/material.dart';
import 'package:module3/Model/questionModel.dart';
import 'package:module3/Questions/Question_49.dart';
import 'package:module3/Questions/Question_50.dart';
import 'package:module3/Questions/Question_51.dart';
import 'package:module3/Questions/Question_52.dart';
import 'package:module3/Questions/Question_53.dart';
import 'package:module3/Questions/Question_54.dart';
import 'package:module3/Questions/Question_55.dart';
import 'package:module3/Questions/Question_56.dart';
import 'package:module3/Questions/Question_57.dart';
import 'package:module3/Questions/Question_58.dart';
import 'package:module3/Questions/Question_59.dart';
import 'package:module3/Questions/Question_60.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Module 3',
      home: QuestionListScreen(),
    );
  }
}
@override
class QuestionListScreen extends StatefulWidget {


  QuestionListScreen({super.key});

  @override
  State<QuestionListScreen> createState() => _QuestionListScreenState();
}

class _QuestionListScreenState extends State<QuestionListScreen> {
  List<Question> quetionlist = [
    Question(questionNo: 49, question: 'Create below screen'),
    Question(
        questionNo: 50,
        question:
            'Create an application to take input number from user and print its reverse number in TextField'),
    Question(
        questionNo: 51,
        question:
            'Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity'),
    Question(
        questionNo: 52,
        question:
            'Create an application with radio buttons (Add, Substraction,Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView'),
    Question(
        questionNo: 53,
        question:
            ' create an application to change background when button is clicked'),
    Question(
        questionNo: 54,
        question:
            'create an application to increate font size when plus button click and decrease when minus button click'),
    Question(
        questionNo: 55,
        question:
            'create an application to display Textview when checkbox is checked and hide otherwise'),
    Question(
        questionNo: 56,
        question: 'Write a program to show four images around Textview.'),
    Question(
        questionNo: 57,
        question:
            'Write a program in android display screen color which the Color will be select from the radio button.'),
    Question(
        questionNo: 58,
        question:
            'Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.'),
    Question(questionNo: 59, question: 'Create login and registration form'),
    Question(questionNo: 60, question: 'Design below screens'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Module 3',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: ListView.builder(
          itemCount: quetionlist.length,
          itemBuilder: (context, index) {
            Question question = quetionlist[index];
            return Card(
              elevation: 5,
              color: Colors.lightBlue.shade50,
              child: ListTile(
                onTap: () => _onClick(question, context),
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue.shade300,
                  radius: 25,
                  child: Text(
                    '${question.questionNo}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                title: Text(
                  '${question.question}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _onClick(Question question, BuildContext context) {
    switch (question.questionNo) {
      case 49:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question49(),
          ),
        );
        break;
      case 50:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question50(),
            ));
        break;
      case 51:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question51(),));
        break;
      case 52:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question52(),));
        break;
      case 53:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question53(),));
        break;
      case 54:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question54(),));
        break;
      case 55:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question55(),));
        break;
      case 56:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question56(),));
        break;
      case 57:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question57(),));
        break;
      case 58:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question58(),));
        break;
      case 59:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question59(),));
        break;
      case 60 :
        Navigator.push(context, MaterialPageRoute(builder: (context) => Question60(),));
        break;

    }
  }
}
