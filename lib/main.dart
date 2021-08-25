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
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'Hey there!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                        color: Colors.teal[700],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    Text(
                      'My name is Anna Kravchuk',
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
                        color: Colors.teal[700],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.teal.shade900,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('+38 093 1234 567',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.teal.shade900,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('anna123@email.com',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                            ),
                          ),
                        ],
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