import 'dart:math';

import 'package:app/gradient_text.dart';
import 'package:flutter/material.dart';

var startAlignment=Alignment.topCenter;
var endAlignment=Alignment.bottomCenter;
// int number=1;
var path="assets/dice-1.png";
var path2="assets/dice-1.png";
int total=0;
final randomizer=Random();

class GradientContainer extends StatefulWidget{
   GradientContainer({super.key,required this.colors});
List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  // const GradientContainer(key):super(key: key);
randfunc(){
  
  setState(() {
    total=0;
  
 int number=randomizer.nextInt(6)+1;
 int number2=randomizer.nextInt(6)+1;
  path="assets/dice-$number.png";
  path2="assets/dice-$number2.png";
  total+=number+number2;
});
}

  @override
  Widget build(context) {
    // TODO: implement build
    startAlignment=Alignment.center;
    return Container(
    decoration: BoxDecoration(gradient: LinearGradient(colors:widget.colors,
   
    begin: startAlignment,
    end: endAlignment
      )
      ),
    child:  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: randfunc
          , child: GradientText("Roll",size: 35,),style: TextButton.styleFrom(foregroundColor: Colors.white,
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(path,width: 150),
                Image.asset(path2,width: 150),
              ],
            ),
          ),
          Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: GradientText("Total: $total",size:30),
        ),
          
        ],
      ),
    ));
  }
}
