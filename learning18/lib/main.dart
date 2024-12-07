import 'package:flutter/material.dart';
import 'package:learning18/learning19.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: learning19(),
    );
  }
}

class MyHomePage extends StatefulWidget{

  @override
  State<MyHomePage> createState() {


    return MyHomeState();


  }
}


//   StateFul Widget




class MyHomeState extends State<MyHomePage>{


  var count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[

          Text('Count:$count',style: TextStyle(fontSize: 34),),
            ElevatedButton(onPressed: (){


             setState(() {
               count++;
             });

            }, child: Text('Increament'))


        ],
        )
      ),


    );
  }
}













/*

---- This Function Is Initilise function
---it only called one time and it clled first

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  --- when your state destroy that time this dispose function called


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }




 */