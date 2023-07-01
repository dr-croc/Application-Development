import 'package:flutter/material.dart';
import 'package:flutter1/Utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, /* this is for whole background color*/
      child: SingleChildScrollView( // this is for scrolling the whole thing
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover,height: 200,),
            SizedBox(height: 20.0,), /* for spacing*/
            Text("Welcome", style: TextStyle(fontSize:  26, fontWeight:  FontWeight.bold)),
            SizedBox(height: 20,),

            Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                TextFormField(decoration: InputDecoration(hintText: " Enter UserName", labelText: "Username"), ),
                TextFormField(decoration: InputDecoration(hintText: " Enter Password", labelText: "Password"), obscureText: true, ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }, child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(150,50)),)
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
