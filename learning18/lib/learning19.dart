import 'package:flutter/material.dart';

class learning19 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return learning19stat();

  }
}

class learning19stat extends State<learning19>{

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result ="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        color: Colors.blue.shade100,

        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller:no1Controller ,
              ),

              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
          Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(onPressed: (){
                var no1 = int.parse(no1Controller.text.toString());
                var no2= int.parse(no2Controller.text.toString());

                var sum= no1 + no2;
                result = "$sum";

                setState(() {

                });
              }, child: Text('Add')),
              ElevatedButton(onPressed: (){
                var no1 = int.parse(no1Controller.text.toString());
                var no2= int.parse(no2Controller.text.toString());

                var sub= no1 - no2;
                result = "$sub";

                setState(() {

                });
              }, child: Text('Sub')),
              ElevatedButton(onPressed: (){
                var no1 = int.parse(no1Controller.text.toString());
                var no2= int.parse(no2Controller.text.toString());

                var mul= no1 * no2;
                result = "$mul";

                setState(() {

                });
              }, child: Text('Mul')),




              ElevatedButton(onPressed: (){
                var no1 = int.parse(no1Controller.text.toString());
                var no2= int.parse(no2Controller.text.toString());

                var div= no1 / no2;
                result = "$div";

                setState(() {

                });
              }, child: Text('Div'))

            ],


          ),


           Text(result)

            ],


          ),
        ),


      ),

    );

  }


}