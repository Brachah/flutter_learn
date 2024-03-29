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
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          onPrimary: Colors.black,
        )
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
      title: Text("News App", style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: (){
            print("share");
          }, 
          icon: Icon(Icons.share),
          ),
        IconButton(
          onPressed: (){
            print("search");
          }, 
          icon: Icon(Icons.search),
          ),
          SizedBox(
            width: 10,
          )
      ],
    ),
    backgroundColor: Colors.white,
     body: //Text("test"),
     Column(
      children: [
        //header
        Container(
          width: double.infinity,
          height: 250,
          //background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/1928997539/display_1500/stock-vector-breaking-news-template-with-d-red-and-blue-badge-breaking-news-text-on-dark-blue-with-earth-and-1928997539.jpg"),
              fit: BoxFit.cover,
               )
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(1.0),
                  Colors.black.withOpacity(.0),
                ]
              )
            ),
            padding: EdgeInsets.all(15),
            child: Align( 
              alignment: Alignment.bottomLeft,
              child: Text(
                "Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,Latest news loading,", 
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22, color: Colors.white,
                  height: 1.2, fontWeight: FontWeight.w900),),
          ),
          ),
        ),
        //body
        Card(
          margin: EdgeInsets.all(5.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 1, 5, 1),
            child: Row(children: [
              //images
              Container(
                width: 300,
                height: 300,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://guardian.ng/wp-content/uploads/2022/11/Computer-Class-Students-Training.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text("Expert gives tips for Africa’s tech growth in 2024",
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.w900, 
                      height: 1.2,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(height: 5),
                    //Text("By Guardian Nigeria - (20 Comments)"),
                    Text.rich(
                      TextSpan(
                        text: "by ",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          height: 1.2,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text:"Guardians",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              height: 1.2,
                              fontWeight: FontWeight.w900,
                            ),
                             recognizer: TapGestureRecognizer()
                             ..onTap =() {
                               print(" The Guardians");
                             }),
                           TextSpan(
                            text:" as at now",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              height: 1.2,
                              fontWeight: FontWeight.normal,
                            ),),
                            //comment
                            TextSpan(
                            text:" - 20 comments",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              height: 1.2,
                              fontWeight: FontWeight.normal,
                            ),),
                        ]) ),
                     SizedBox(height: 3,),   
                    Text("In view of global and local trends, Mohammed argues that Tech will continue to be a genuine currency driving an interesting future for young Africans. To this end, he opined that young Africans would build more online community platforms that would connect them and enable them to showcase their prowess. According to him, these efforts can be drawn into a larger base when the government recognizes its essence and pushes it towards the growth of digital economies.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.2,
                      fontWeight: FontWeight.normal,
                    ),
                    ),
                  ],
                )
                )
      ]),
          ),
        )
      ],
     )

     );
   
  }
}