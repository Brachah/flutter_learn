// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  //runapp
  runApp(const OTentryWidget());
}

//Entry Widget
class OTentryWidget extends StatelessWidget {
   const OTentryWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //return MaterialApp
    return MaterialApp(
      title: "OT Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.red,
      ), 
      home: OThomePage(),
    );
   
  }
}

//OThomePage
class OThomePage extends StatefulWidget {
  const OThomePage({Key? key}) : super(key: key);

  @override
  State<OThomePage> createState() => _OThomePageState();
}

class _OThomePageState extends State<OThomePage> {
   //scaffoldkey
  final GlobalKey<ScaffoldState>
  _scaffoldkey =GlobalKey<ScaffoldState>();

  //usernameconntroller
  final TextEditingController _usernamecontroller = TextEditingController();
  //usernameconntroller
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("OT App"),
    ),
     body: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            controller: _usernamecontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.black,),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
              labelText: "User Name",
              hintText: "Enter User Name",
               ),
            ),
        ),
        //// This is password
        Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            controller: _passwordcontroller,
            obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.black,),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
              labelText: "Password",
              hintText: "Enter Password",
               ),
            ),
        ),
        //button
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ElevatedButton(
            onPressed: () {
              //print("Am working");
              var username = _usernamecontroller.text;
              var password = _passwordcontroller.text;
              print("username: " + username + " password: " + password);
            },
            child: Text("Login"),
            ),
          )
      ],
     ) 
     );
   
  }
}