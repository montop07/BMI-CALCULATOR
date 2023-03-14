//MADE BY
//NAME:- AYUSHI VERMA
//ROLL NUMBER:- 102103360
//CLASS: - CO13
import 'package:flutter/material.dart';

class Demo extends StatefulWidget{
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? _result;
  String output = "";
  String conc = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text('BMI Calculator'),
        centerTitle:  true,
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'height in m',
                icon: Icon(Icons.trending_up),
              ),
            ),
            Divider(),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),

            SizedBox(height: 15),
            RaisedButton(
              padding: EdgeInsets.all(15.0),
              color: Colors.red,
              child: Text(
                "Calculate",
                style:  TextStyle(color: Colors.white),
              ),
              onPressed: calculateBMI,
            ),
            Text(
              output,
              style: TextStyle(color: Colors.cyan, fontSize: 20,),
            ),
            Text(
              conc,
              style: TextStyle(color: Colors.redAccent,fontSize: 25),
            ),
            SizedBox(height: 15),
            Text(
              _result == null ? "":"${_result?.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 19.5,
                fontWeight: FontWeight.w500,
              ),
            ),


          ],
        ),
      ),
    );
  }

  void calculateBMI(){
    double height = double.parse(_heightController.text);
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    setState((){
      if(result<16.0){
        conc = "Severly Underweight";
      }
      else if(result<18.5){
        conc = "Underweight";
      }
      else if(result<25.0){
        conc = "Normal";
      }
      else if(result<30.0){
        conc = "Overweight";
      }
      else{
        conc = "Obese";
      }
      output = "\n BMI :-"+ result.toStringAsFixed(2);
    });
  }
}