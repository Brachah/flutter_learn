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
     body: Column(
       children: [
         Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          height: 100,
            child: Text(
              """Welcome to OT App ihhkkhhkkknkjbgyfyuglgvvyyytutftdfcbviyoy
                  uououoiuoooouikhhjjghhhfhfhfhgktuighhfy hhilknkgyd fyuygyg
                  hkjkgjgjghhjgghghgjgjjgggyyffy jfuujyt hiyyiy rrsrsr hgguk""",
           
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 12,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              wordSpacing: 3,
            ),

            )
            ),
            RichText(text: TextSpan(text: "Don't have an account?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              
            ),
            children: [
              WidgetSpan(child: Icon(Icons.supervised_user_circle_outlined)),
              TextSpan(
                text: " Sign up",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                recognizer: TapGestureRecognizer
                ()
                ..onTap =() {
                  print("Sign up");
                })
            ],
            ))
       ],
     )
     );
   
  }
}