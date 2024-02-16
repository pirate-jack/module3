
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question55 extends StatefulWidget {
  const Question55({super.key});

  @override
  State<Question55> createState() => _Question55State();
}

class _Question55State extends State<Question55> {
  bool ischeck = false;
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: ischeck, onChanged: (value) {
              setState(() {
                ischeck = value!;
              });
            },),
            if(ischeck == true)
              Text('Check Box is Checked',style: TextStyle(
                fontSize: 20
              ),),

          ],
        ),
      ),
    );
  }
}

