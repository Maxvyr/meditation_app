import 'package:flutter/material.dart';
import 'package:meditation_design_app/views/home_page.dart';


// this exemple https://dribbble.com/shots/15805162-Meditation-App

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meditation App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

