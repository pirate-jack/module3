import 'package:flutter/material.dart';


class Question57 extends StatefulWidget {
  const Question57({super.key});

  @override
  State<Question57> createState() => _Question57State();
}

class _Question57State extends State<Question57> {
  Color _selectColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
        backgroundColor: _selectColor,
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioListTile(
                    title: Text('Red'),
                    value: Colors.red,
                    groupValue: _selectColor,
                    onChanged: _changeBackground,
                  ),
                  RadioListTile(
                    title: Text('Blue'),
                    value: Colors.blue,
                    groupValue: _selectColor,
                    onChanged: _changeBackground,
                  ),
                  RadioListTile(
                    title: Text('DeepOrange'),
                    value: Colors.deepOrange,
                    groupValue: _selectColor,
                    onChanged: _changeBackground,
                  ),
                  RadioListTile(
                    title: Text('Purple'),
                    value: Colors.deepPurple,
                    groupValue: _selectColor,
                    onChanged: _changeBackground,
                  ),
                  RadioListTile(
                    title: Text('Yellow'),
                    value: Colors.yellow,
                    groupValue: _selectColor,
                    onChanged: _changeBackground,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void _changeBackground(Color? color) {
    setState(() {
      _selectColor = color!;
    });
  }
}
