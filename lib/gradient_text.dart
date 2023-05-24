import 'package:flutter/material.dart';


class GradientText extends StatelessWidget {
   GradientText(this.text,{super.key,required this.size});
String text;
double size;
  // const GradientText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(fontSize: size,
    // gradient:LinearGradient(colors: [Colors.red,Colors.blue],begin: Alignment.bottomCenter,end:Alignment.bottomRight)
    color: Color(0xffff1515)
    )
    );
    
  }
}
