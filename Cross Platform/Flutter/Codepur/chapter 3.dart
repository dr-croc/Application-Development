// chapter 3 

'''
In chapter 3, what we have leaned is that 

main.dart : 
1. understood the thememode, dark theme, changing the color of the mode
2. also learned about routes, 
3. intial route will show the first page that is mentioned
4. also we can see the function, how function works, 

login_page.dart
1. understood how the text works
2. understood how text style works and its other text scale factor

'''



// file name : main.dart
import 'package:flutter/material.dart';
import 'package:flutter1/pages/home_page..dart';
import 'package:flutter1/pages/login_page..dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 20;
    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.brown), // this will work on the app bar, when the theme is only dark.
      darkTheme: ThemeData(brightness: Brightness.dark,),

      initialRoute: "/home", // this will define the initial route and will open the first home page first.
      routes: {
        "/": (context) => new  LoginPage(),
        "/login":(context) => LoginPage(),
      },
    );
  }

  bringVegetable({int rupees = 100, required bool thaila}){
  // so here we can see that using curly braces can make it optional, without curly braces, it will be required by the function to send the value
  // required doesn't need to add any value, it will be required by the calling function to sen the value.
  }

}

// login_page.dart
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(

        child: Text("Login page",
          style: TextStyle(
            fontSize: 20, // change the font size into 20.
            color: Colors.red, // change the color into red
            fontWeight: FontWeight.bold // change the font into double
          ),
          textScaleFactor: 2.0, // incerease the text size by double.
        ),

      ),
    );
  }
}


// home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 170;
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App"),),
      body: Center(
        child: Container(
          child: Text("Welcome to ${days} days of flutter"),
        ),
      ),
    );
  }
}

