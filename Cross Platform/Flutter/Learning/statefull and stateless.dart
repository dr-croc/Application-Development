import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

// main class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),

      home: MyHomePage(),

    );
  }
}

// staterfull home class that is being used in the stateless widget class
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Container();
  } // extends the StatefulWidget MyHomePage class

}
