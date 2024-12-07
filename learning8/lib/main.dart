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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  var emaitext = TextEditingController();
  var password = TextEditingController();

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

     //   GET USER INPUT USED TO TEXTFEILD

      body:Center(
          child: Container(
             width: 300,
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number, // it is used to change the keybord
                    controller: password,
                   obscureText: true,  //it is  used to hide password
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                   focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
              borderSide: BorderSide(
                  color: Colors.deepOrange,
                 width: 11

                   )


                  ),

                  ),
                  ),
                  TextField(

                   controller:emaitext ,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                                color: Colors.deepOrange
                            )
                        ),
                           suffixIcon: IconButton(
                             icon: Icon(Icons.remove_red_eye,color: Colors.deepOrange,),
                             onPressed: (){

                             },
                           ),
                           prefixIcon: Icon(Icons.email)
                    ),

                  ),


                 ElevatedButton(onPressed: (){

                   String uemail=emaitext.text.toString();
                   String upass=password.text;
                   
                   print("Email : $uemail");
                   print("pass :$upass");

    }, child: Text(
    'Login'
    ))




                ],
              )))


    );
  }
}











/*--------- it is used to shadow effectct


            Card( // -- it is used to show shadow effect
          shadowColor: Colors.blue,// used to get shadow color
          elevation: 5,// used to more shadow
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Hello World',style: TextStyle(fontSize: 50),),
      ))---------------*/