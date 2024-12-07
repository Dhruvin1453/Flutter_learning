

import 'package:flutter/material.dart';
import 'package:learning13/learning14.dart';
import 'package:learning13/learning15.dart';
import 'package:learning13/learning16.dart';
import 'package:learning13/learninng17.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){

  runApp(const myApp());

}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(



      ),

      home: learninng17(),
    );

  }


}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(


    // Stack Widget In Flutter


      body: Stack(

        children: [

          Container(

            height: 200,
            width: 200,
            color: Colors.deepOrange,
          ),


          Positioned(
            top: 20,
            left: 20,
            child: Container(

              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
          )


        ],




      ),


    );


  }

}