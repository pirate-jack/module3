import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question53 extends StatefulWidget {
  const Question53({Key? key}) : super(key: key);

  @override
  State<Question53> createState() => _Question53State();
}

class _Question53State extends State<Question53> {
  List<Color> Colorlist = [
    Colors.lightBlue,
    Colors.pinkAccent,
    Colors.deepPurpleAccent,
    Colors.tealAccent
  ];
  Color selectedColor = Colors.red;

  void rendomcolor() {
    var index = Random().nextInt(Colorlist.length);
    setState(() {
      selectedColor = Colorlist[index];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Change Background'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            rendomcolor();
          },
          child: Text('Change Background'),
        ),
      ),
    );
  }
}
