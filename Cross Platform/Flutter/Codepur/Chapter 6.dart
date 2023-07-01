// code before animated container

import 'package:flutter/material.dart';
import 'package:flutter1/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { // this class also created during stateful
  String name = ""; // decalring a variable which will be changed during state change

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, /* this is for whole background color*/
      child: SingleChildScrollView( // this is for scrolling the whole thing
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover,height: 200,),
            SizedBox(height: 20.0,), /* for spacing*/
            Text("Welcome $name",
                style: TextStyle(fontSize:  26, fontWeight:  FontWeight.bold)
            ),
            SizedBox(height: 20,),

            Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                TextFormField(decoration: InputDecoration(hintText: " Enter UserName", labelText: "Username"),
                  onChanged: (value){
                  name = value;
                  setState(() {}); // this will be responsible for changing the state and also updating the values
                  },),

                TextFormField(decoration: InputDecoration(hintText: " Enter Password", labelText: "Password"),
                  obscureText: true, ),

                  SizedBox(height: 20,),

                  InkWell( // responds to touch in an application
                    onTap:(){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Container(width: 150, height: 40, alignment: Alignment.center , //this is a container example
                    child:
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(color:  Colors.deepPurple,borderRadius: BorderRadius.circular(10)), // for making it circular
                    ),
                  )


              ],),
            ),
          ],
        ),
      ),
    );
  }
}

// code after animated container  and based on condition changed
import 'package:flutter/material.dart';
import 'package:flutter1/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { // this class also created during stateful
  String name = ""; // decalring a variable which will be changed during state change
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, /* this is for whole background color*/
      child: SingleChildScrollView( // this is for scrolling the whole thing
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover,height: 200,),
            SizedBox(height: 20.0,), /* for spacing*/
            Text("Welcome $name",
                style: TextStyle(fontSize:  26, fontWeight:  FontWeight.bold)
            ),
            SizedBox(height: 20,),

            Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                TextFormField(decoration: InputDecoration(hintText: " Enter UserName", labelText: "Username"),
                  onChanged: (value){
                  name = value;
                  setState(() {}); // this will be responsible for changing the state and also updating the values
                  },),

                TextFormField(
                  decoration: InputDecoration(
                      hintText: " Enter Password",
                      labelText: "Password"),
                  obscureText: true, ),

                  SizedBox(height: 20,),

                  InkWell( // responds to touch in an application
                    onTap:() async {
                      setState(() {
                        changeButton = true; // condition for changing animation of the button
                      });
                      await Future.delayed(Duration(seconds: 1));
                    },
                    child: AnimatedContainer(duration:Duration(seconds: 1), width: changeButton? 80: 150, height: 40, alignment: Alignment.center , //this is a container example
                    child: changeButton?
                    Icon(Icons.done)
                        : Text( "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),

                      decoration: BoxDecoration(
                          color:  Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)), // for making it circular
                    ),
                  )


              ],),
            ),
          ],
        ),
      ),
    );
  }
}


