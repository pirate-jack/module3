import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question51 extends StatefulWidget {
  const Question51({super.key});

  @override
  State<Question51> createState() => _Question51State();
}

class _Question51State extends State<Question51> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  List<int>_r= [];
  void numberofindex(){
    int num1 = int.parse(_num1.text);
    int num2 = int.parse(_num2.text);
    List<int> numbers = List.generate(num2-num1 + 1, (index) => num1 + index);
    setState(() {
      _r = numbers;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Two Number index'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _num1,
                decoration: InputDecoration(hintText: 'Enter your Number'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _num2,
                decoration: InputDecoration(hintText: 'Enter your Number'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  numberofindex();
                },
                child: Text('press to index'),
              ),
              SizedBox(height: 10,),
              Text('$_r'),
            ],
          ),
        ),
      ),
    );
  }
}
