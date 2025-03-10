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

       textTheme: TextTheme(

         headlineLarge: TextStyle(fontSize: 21,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic),
         headlineSmall: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
       ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LEARNING 7'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

             // font Theme
        body:Column(
          children: [
            Text('Hello World',style: Theme.of(context).textTheme.headlineLarge,),

            Text('Good Morning',style: Theme.of(context).textTheme.headlineSmall,)
          ],
        ),

    );
  }
}







/* --  CircleAvatar In Flutter --------
        Center(
          child: CircleAvatar(
            child: Text("Name",style: TextStyle(fontSize: 20,),),
            backgroundImage: AssetImage('asset/user.jpeg'),
            backgroundColor:Colors.white12,
            radius: 100, // used to give size
          ),
        )-------------------------------------*/




/*  SET THE FONTS FOR YOUR APP
        Text('Hello World',style: TextStyle(fontFamily: 'Font1',fontSize: 200),)
        -------------------------------------*/