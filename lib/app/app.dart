import 'package:advance_flutter/presentation/resources/routes_manager.dart';
import 'package:advance_flutter/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );    
  }
}
