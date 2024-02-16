import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question50 extends StatefulWidget {
  const Question50({super.key});

  @override
  State<Question50> createState() => _Question50State();
}

class _Question50State extends State<Question50> {

  TextEditingController _Revers = TextEditingController();
  String r= '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('reverse number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _Revers,
                decoration: InputDecoration(hintText: 'Enter your Number'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  changeRevers();
                },
                child: Text('press to reverse'),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Your Revers Number Is : $r'),
            ],
          ),),
      ),
    );
  }
  void changeRevers() {
    String input = _Revers.text;
    String revers = input.split('').reversed.join();
    print(revers);
    setState(() {
      r = revers;
    });
  }
}
