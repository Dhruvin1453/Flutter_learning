import 'package:flutter/material.dart';

class learnig16 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      // Richtext In Flutter

      body: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Hello',style: TextStyle(fontSize: 10,color: Colors.pinkAccent)),
            TextSpan(text: 'World',style: TextStyle(fontSize: 34,color: Colors.cyan,fontWeight: FontWeight.bold))
          ]
        ),




      ),


    );

  }


}