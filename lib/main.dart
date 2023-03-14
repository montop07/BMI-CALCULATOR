import 'package:flutter/material.dart';
import 'package:bmi_app_calc/demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:  ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: Demo(),
    );
  }
}