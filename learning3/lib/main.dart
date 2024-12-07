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
      home: const MyHomePage(title: 'LEARNING FLUTTER PART 3'),
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

    var arrName=['Ankit','Yash','Sujal','Kirtan','Pushkar','Mavani','Niraj'];

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    title: Text(widget.title),
    ),

   //--------------------  LIST BUILDER ---------------------------------------------

   //  in list builder there are by defalut scroll view is given

    body:ListView.builder(itemBuilder:(context,index){
      return Text(arrName[index],style: const TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
    },
      itemCount: arrName.length,
      itemExtent: 100,// it is used to  give padding in list or extend list
      //scrollDirection: Axis.horizontal, <---- it is usde to horizontal scroll
    )
    );
  }
}






/*-------------------------------------  LIST ------------------------------
body:ListView(
scrollDirection: Axis.horizontal, // it is used to horizontal by default it is vertical
// reverse: true,<----------- it is used to reverse your list
children: [
Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
Text('Two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
Text('Three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
Text('Four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
Text('Five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),)
],
)--------------------------------------------*/