import 'package:flutter/material.dart';
import 'package:learning13/learning14.dart';

class learning15 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     return Scaffold(


       // SizeBox Widget In Flutter

       // When You Dont Use Containers other Property Rather Than height and width you can sizebox instead of container



       body: Center(
         child: SizedBox(
             height: 100,
             width: 100,
             child: ElevatedButton(onPressed: (){},child: Text('Login'),)),
       ),

     );
  }

}

