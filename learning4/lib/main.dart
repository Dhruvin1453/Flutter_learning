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
      home: const MyHomePage(title: 'LEARNING FLUTTER PART 4'),
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


       // DECORATE TO CONATAINER

        body: Container(

                 width:double.infinity,
                  height:double.infinity,
                   color: Colors.blue.shade50,

               child: Center(

                 child: Container(

                   width: 100,
                   height: 100,
                   decoration: BoxDecoration(

                     color : Colors.blueGrey,
                    // borderRadius: BorderRadius.circular(70),
                     borderRadius:BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21)),

                     border: Border.all(
                       width: 2,
                       color:Colors.black
                     ),

                     boxShadow: [
                            BoxShadow(
                                blurRadius: 11,
                                color: Colors.grey,
                                spreadRadius: 11
                           )
                       ],

                     //shape: BoxShape.circle,  -eithr you use shape or borderradius

                   ),




               ),
               ),

        )
    );
  }
}



