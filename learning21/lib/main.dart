import 'package:flutter/material.dart';

import 'SecondPage.dart';


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
      home:MyHomePage(title: "First Page"),
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

var nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Passing Data Beetween  Screen

      body:Center(
        child: Container(
         child:  Column(
            children: [

              Text("Eneter Name:"),

              TextField(
                controller: nameController,
              ),

              ElevatedButton(onPressed: (){

                Navigator.push(context,MaterialPageRoute(builder: (context) => Secondpage(nameController.text.toString()),));


              }, child:Text('Click'))

            ],
          ),
        ),
      ),


    );
  }
}
