import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning20/main.dart';

class Splashscreen extends StatefulWidget{

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  //  In this Code we learn built a splash screen

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "First Page"),));
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Container(
            color: Colors.blue,
            child: Center(child: Text('Classico',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700,color: Colors.white),)),
          ),

    );
  }
}