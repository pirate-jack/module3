import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question52 extends StatefulWidget {
  const Question52({super.key});

  @override
  State<Question52> createState() => _Question52State();
}

class _Question52State extends State<Question52> {
  TextEditingController _Num1 = TextEditingController();
  TextEditingController _Num2 = TextEditingController();
  int Option = 0;
  String Ans = '';

  void GetCalulate() {
    double Num1 = double.parse(_Num1.text);
    double Num2 = double.parse(_Num2.text);
    setState(() {
      switch (Option) {
        case 1:
          Ans = (Num1 + Num2).toString();
          break;
        case 2:
          Ans = (Num1 - Num2).toString();
          break;
        case 3:
          Ans = (Num1 * Num2).toString();
          break;
        case 4:
          Ans = (Num1 / Num2).toString();
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Number Calculation'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 15,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Addition'),
                        leading: Radio(
                          value: 1,
                          onChanged: (value) {
                            setState(() {
                              Option = value as int;
                            });
                          },
                          groupValue: Option,
                        ),
                      ),
                      ListTile(
                        leading: Radio(
                          value: 2,
                          onChanged: (value) {
                            setState(() {
                              Option = value as int;
                            });
                          },
                          groupValue: Option,
                        ),
                        title: Text('Substraction'),
                      ),
                      ListTile(
                        leading: Radio(
                          value: 3,
                          onChanged: (value) {
                            setState(() {
                              Option = value as int;
                            });
                          },
                          groupValue: Option,
                        ),
                        title: Text('Multiply'),
                      ),
                      ListTile(
                        leading: Radio(
                          value: 4,
                          onChanged: (value) {
                            setState(() {
                              Option = value as int;
                            });
                          },
                          groupValue: Option,
                        ),
                        title: Text('Division'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _Num1,
                  decoration: InputDecoration(hintText: 'Enter First Value'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _Num2,
                  decoration: InputDecoration(hintText: 'Enter Second Value'),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      GetCalulate();
                    });
                  },
                  child: Text('Submit'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Ans : $Ans',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
