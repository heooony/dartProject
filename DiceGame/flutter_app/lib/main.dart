import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: NewWidget(
                  color1: Colors.blue,
                  color2: Colors.black,
                  color3: Colors.greenAccent,
                ),
              ),
              Expanded(
                child: NewWidget(
                  color1: Colors.white70,
                  color2: Colors.yellow,
                  color3: Colors.greenAccent,
                ),
              ),
              Expanded(
                child: NewWidget(
                  color1: Colors.red,
                  color2: Colors.black,
                  color3: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget({this.color1, this.color2, this.color3});
  final color1;
  final color2;
  final color3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
              child: Container(
            color: color1,
          )),
        ),
        Expanded(
          child: SizedBox(
              child: Container(
            color: color2,
          )),
        ),
        Expanded(
          child: SizedBox(
              child: Container(
            color: color3,
          )),
        ),
      ],
    );
  }
}
