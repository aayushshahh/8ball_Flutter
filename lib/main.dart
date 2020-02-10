import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.teal[400],
          ),
          body: ballApp(),
        ),
      ),
    );

class ballApp extends StatefulWidget {
  @override
  _ballAppState createState() => _ballAppState();
}

class _ballAppState extends State<ballApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  num = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        ],
      ),
    );
  }
}
