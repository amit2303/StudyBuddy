import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key});//default constructor

 MyApp._internal(); //private named constructor

  static final MyApp instance =MyApp._internal(); //single instance--singleton

  int appState =0;  //accessing this using instance

  factory MyApp() {
    return instance;
  } //factory for the class instance 


  @override
  State<MyApp> createState() => _MyAppState(); 
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
