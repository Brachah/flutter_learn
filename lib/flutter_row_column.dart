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
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
            Text("How're you?"),
             Text("How're you?"),
              Text("How're you?"),
               Text("How're you?"),
           ]),
           SizedBox(
            height: 20,
           ),
           Text("This is another column"),
         ],
       ),
     ),
   );
   
  }
}