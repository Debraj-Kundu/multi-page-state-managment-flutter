import 'package:flutter/material.dart';
import 'package:state_managment/page1.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter;
  @override
  void initState() {
    super.initState();
    counter = counter ?? 0;
  }
  void _incrementCounter(_){
    setState(() {
      counter++;
    });
  }
  void _decrementCounter(_){
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        incrementCounter: _incrementCounter,
        decrementCounter: _decrementCounter,
        counter: counter,
      ),
    );
  }
}