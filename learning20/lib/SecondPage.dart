import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('This Is Second Page'),
      ),


     body: Center(child: Text('Hello , How Are You !')),
    );
  }

}