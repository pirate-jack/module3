import 'package:flutter/material.dart';


class Question58 extends StatefulWidget {
  const Question58({super.key});

  @override
  State<Question58> createState() => _Question58State();
}

class _Question58State extends State<Question58> {
  double rValue = 0, bValue = 0, gValue = 0;
  Color? _colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: _colors ?? Colors.white,
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Red   "),
                Expanded(
                  child: Slider(
                    value: rValue,
                    onChanged: (value) {
                      rValue = value;
                      _changeBackground();
                    },
                    min: 0,
                    max: 255,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Green"),
                Expanded(
                  child: Slider(
                    value: gValue,
                    onChanged: (value) {
                      gValue = value;
                      _changeBackground();
                    },
                    min: 0,
                    max: 255,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Blue  "),
                Expanded(
                  child: Slider(
                    value: bValue,
                    onChanged: (value) {
                      bValue = value;
                      _changeBackground();
                    },
                    min: 0,
                    max: 255,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _changeBackground() {

    setState(() {
      _colors = Color.fromARGB(255, rValue.round(), gValue.round(), bValue.round());
    });
  }
}
