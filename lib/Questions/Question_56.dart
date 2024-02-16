import 'package:flutter/material.dart';

class Question56 extends StatefulWidget {
  const Question56({super.key});

  @override
  State<Question56> createState() => _Question56State();
}

class _Question56State extends State<Question56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text around image'),
      ),
      body: Center(
        child: Container(
          // height: 500,
          // width: 500,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                child: Text('Text View'),
              ),
              Positioned(
                left: 100,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/house1.png'),
                ),
              ),
              Positioned(
                left: -100,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/house1.png'),
                ),
              ),
              Positioned(
                top: -100,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/house1.png'),
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/house1.png'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
