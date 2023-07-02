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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true; // condition for changing animation of the button
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() { // this state will happen if twe come back
        changeButton = false;
      });
    }
    else {

    }


  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, /* this is for whole background color*/
      child: SingleChildScrollView( // this is for scrolling the whole thing
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              SizedBox(height: 20,),
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                height: 200,),

              SizedBox(height: 20.0,), /* for spacing*/

              Text("Welcome $name",
                  style: TextStyle(
                      fontSize:  26,
                      fontWeight:
                      FontWeight.bold)
              ),

              SizedBox(height: 20,),

              Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: " Enter UserName",
                        labelText: "Username"),
                    validator: (value){ // this will be the value that we get from the edit text
                      if(value!.isEmpty){
                        return " Please user name cant be empty"; // this will show an warning in the under the text field.
                      }
                      return null;
                    },
                    onChanged: (value){
                    name = value;
                    setState(() {
                    }); // this will be responsible for changing the state and also updating the values
                    },),

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: " Enter Password",
                        labelText: "Password",),
                    validator: (value){ // this will be the value that we get from the edit text
                      if(value!.isEmpty){
                        return " Password can't be empty";  // this will show an warning in the under the text field.
                      }
                      else if(value.length<6){
                        return "password length at least should be 6";  // this will show an warning in the under the text field.
                      }
                      return null;
                    },
                    obscureText: true, ),

                    SizedBox(height: 20,),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton? 50: 8),

                      child: InkWell( // responds to touch in an application
                        onTap:()  => moveToHome(context),

                        child: AnimatedContainer(
                          duration:Duration(seconds: 1),
                          width: changeButton? 80: 150,
                          height: 40,
                          alignment: Alignment.center , //this is a container example
                        child: changeButton? Icon(Icons.done) :

                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),

                        ),
                      ),
                    )
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
