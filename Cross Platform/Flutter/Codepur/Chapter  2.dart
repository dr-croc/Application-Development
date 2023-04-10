// home_page.dart
// this file is used to show, how you can use other file to design the UI
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "shyakat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Test App"),),

      body: Center(
        child: Container(
          child: Text("Welcome $days for flutter by $name"),
        ),
      ),

      drawer: Drawer(),

    );
  }

}


// main.dart
// this where we called the home_Page.dart, as mentioned in import, we get the ui from home_page.dart
import 'package:flutter/material.dart';
import 'package:test_app/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: HomePage(),
      
    );

  }
}

