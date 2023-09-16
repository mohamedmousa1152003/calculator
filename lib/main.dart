import 'package:calculator/calculator_home.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const calculator());
}

// ignore: camel_case_types
class calculator extends StatelessWidget{
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  home(), // call of calculator_home
    );
  }

}