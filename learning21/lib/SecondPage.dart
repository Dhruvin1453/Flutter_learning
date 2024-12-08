import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget{

  var name;

  Secondpage(this.name);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(child: Text("Hello $name , How Are You",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 35,color: Colors.black26),))
    );


  }
}