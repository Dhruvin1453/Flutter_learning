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
      title: 'LEARNING FLUTTER',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LEARNING FLUTTER PART 2'),
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
   /*------------------------------------------------------------------------------------------------------------
                               SCROLL VIEW
      ---------------------------------------------------------------------------------------------------------*/







      body: SingleChildScrollView(
          child: Column(
            children: [

              //--------------------------------HERE IT IS FIRS CONATINER WITH ROW---------------------------------------------
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, //  <--- it used for row scrolll
                child: Row(     // wrap with widget or sninlgescrollview
                  children: [
                    Container(  // THIS CONTAINER WRAP WITH ROWW
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 200,
                      color: Colors.orange,
                    ),
                     Container(  // THIS CONTAINER WRAP WITH ROWW
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                     ),
                    Container(  // THIS CONTAINER WRAP WITH ROWW
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 200,
                      color: Colors.deepPurple,
                    ),
                    Container(  // THIS CONTAINER WRAP WITH ROWW
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),//--------------------------------------------- ROW SCROLL------------------------------
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.amber,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.white12,
              ),
            ],
          ),
        ),


      );
    }
  }