
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question54 extends StatefulWidget {
  const Question54({Key? key}) : super(key: key);



  @override
  State<Question54> createState() => _CouterState();
}

class _CouterState extends State<Question54> {
  double fontSize = 18;

  void increment() {
    setState(() {
      fontSize += 3;
    });
  }

  void decrement() {
    setState(() {
      fontSize -= 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Font Size'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    decrement();
                  },
                  child: Text('-'),
                ),
                Text('Text',style: TextStyle(
                  fontSize: fontSize,
                ),),
                ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
