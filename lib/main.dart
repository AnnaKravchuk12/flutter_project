import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color randomColor = generateColor();

  static Color generateColor() {
    return Color(Random().nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          setState(() {
            randomColor = generateColor();
          });
        },
        child: Center(
          child: Scaffold(
            backgroundColor: randomColor,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16,),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/Anna.jpeg'),
                    ),
                    Text(
                      'Anna Kravchuk',
                      style: TextStyle(
                        fontFamily: 'IndieFlower',
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '21 year old, Lviv',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                        color: Colors.teal[100],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    Container(
                      child: Row(
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}