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
      home: const MyHomePage(title: 'LEARNING FLUTTER'),
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

   body:
    );
  }
}


/*-----------------------------------------------------------------------------------------
     CENTER WIDGET

      body:Center(
       child:  Container(
          child: Text('Hello World', style: TextStyle(color: Colors.lightBlueAccent)),
       ),),
       ---------------------------------------------------------------------------------------*/




/*--------------- BOUTTONS -----------------------------------------------------------------

       THERE ARE MAIN THREE TYPE OF BUTTON

        body:Container(
        child: /*ElevatedButton-TextButton*/OutlinedButton(
          child: Text('Click'),
          onPressed: (){
            print('Elavated Button Clicked');
          },
          onLongPress: (){
            print('Longpress');
          },
        ),
      )----------------------------------------------------------------------------*/



      /*------------------------------------------------------------------------------------
      body:Image(image:AssetImage('assets/billgate.jpg')),
      --------------------------------------------------------- ----------------------*/




/*--------------------------------------ROW / COLUMN------------------------------
      Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        /* crossAxisAlignment:,*/
         children:[
           Text('A',style: TextStyle(fontSize: 25),),
           Text('B',style: TextStyle(fontSize: 25),),
           Text('C',style: TextStyle(fontSize: 25),),
           Text('D',style: TextStyle(fontSize: 25),),
           ElevatedButton(onPressed: (){}, child: Text('click'))
  ]),_______________________________________________________________________________________*/


/*---------  Inkwell Widget Or Button----------------------------------------------


     body: Center(
       child: InkWell(
         onTap: (){
           print('onTap Clicked');
         },
         onLongPress: (){
           print('onLongpress clicked');
         },

         child: Container(
           width: 200,
           height: 200,
           color: Colors.limeAccent,
         ),
       ),
     ),__________________________________________________________________________________*/