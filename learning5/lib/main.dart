import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LEARNING FLUTTER 5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),



      body:Container(
          width: 100,
          height: 100,
          color: Colors.grey,
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Text('Hello World',style: TextStyle(fontSize: 20),),
          )
      ),


      /*  Padding Widget--------------------------------------------
      Padding(

        padding: const EdgeInsets.all(8.0),
        child: Text('Hello World',style: TextStyle(fontSize: 30),),
      )
   --------------------------------------------------------*/

    );
  }
}























/* -----------------------------------------------------------------

// Expend Widget
Row(
mainAxisAlignment: MainAxisAlignment.center,

children: [
Expanded(
flex: 4,// it used to give size a perticular conatiner or it devides total flex with this one
child: Container(
width: 50,
height: 100,
color: Colors.blue,
),
),

Expanded(
flex: 2,
child: Container(
width: 50,
height: 100,
color: Colors.grey,
),
),

Expanded(
flex: 3,
child: Container(
width: 50,
height: 100,
color: Colors.yellow,
),
),

// Expend Widget
Expanded(
child: Container(
width: 50,
height: 100,
color: Colors.red,
),
),






],
),

  ----------------------------------------  -------------------*/




