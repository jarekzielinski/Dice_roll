import 'package:flutter/material.dart';

import 'gradient_container.dart';
List<Color> colors=  [
  Color(0xfffae500),
      Colors.white,
      // Colors.white,
      Color(0xfffae500)
    ];
void main() {
runApp(  MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Scaffold(
  appBar: AppBar(
    title: Text("Dice roll",style: TextStyle(color: Colors.red),),
    centerTitle: true,
    backgroundColor: Color(0xfff9f907),
  ),
  backgroundColor: Colors.amber,
 
  body:  GradientContainer(colors: colors))));
  
}


