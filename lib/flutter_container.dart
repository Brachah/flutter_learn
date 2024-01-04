// ignore_for_file: prefer_const_constructors

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

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("OT App"),
    ),
     body: Container(
      // color: Colors.pink,
      height: 100, 
      alignment: Alignment.bottomCenter,
      width: 350,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(40),
       decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(6.0, 6.0))
        ]
      ),  
      
      child: Text("I'm working",
      style: TextStyle(fontSize: 20, color: Colors.white),),
     
     ),
   );
   
  }
}