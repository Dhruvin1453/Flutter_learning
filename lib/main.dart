import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _namecontroller = TextEditingController();
  String nameValue = "";

  @override
  void initState() {
    getvalue();
    super.initState();
  }

  void getvalue() async{


    var pref = await SharedPreferences.getInstance();
    var getName = pref .getString("details");


  setState(() {
    nameValue = getName ?? "";
  });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,


      ),
      body: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _namecontroller,
            decoration: InputDecoration(
              labelText: "Enter Name",
              border: OutlineInputBorder()
            ),

          ),

          ElevatedButton(onPressed: ()async{


             var n = _namecontroller.text.toString();
             var pref = await SharedPreferences.getInstance();

             pref.setString("details", n);
            setState(() {
              nameValue = n;
            });

          }, child:Text("SAVE")),

          Text(nameValue)
        ],
      )  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
