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

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("OT App"),
    ),
    backgroundColor: Colors.lime,
     body: Center(
       child: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.all(10),
         child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.orange,
            elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("OT APPLICATION", style: TextStyle(fontSize: 20),),
                subtitle: Text("OT App", style: TextStyle(color: Colors.white, fontSize: 15),),
                leading: Icon(Icons.album, color: Colors.white, size: 50),
              ),
              //button
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                  ),
                  onPressed: (){
                    print("play");
                  } ,
                  child: Text("Play"),),
              
                //pause button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: (){
                  print("pause");
                } ,
                child: Text("Pause"),)
            ],
          ),
       ],),
     )
     )));
   
  }
}