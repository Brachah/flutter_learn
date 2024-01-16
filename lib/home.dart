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
  //add page index
  int pageIndex = 0;
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
     body: SingleChildScrollView(
      //Text("test"),
       child: Column(
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
          for(var i =0; i<3; i++)
          OTblogList().getCard(
            thumbnail: "https://guardian.ng/wp-content/uploads/2022/11/Computer-Class-Students-Training.jpg",
            title: "Expert gives tips for Africa’s tech growth in 2024",
            desciption: "In view of global and local trends, Mohammed argues that Tech will continue to be a genuine currency driving an interesting future for young Africans. To this end, he opined that young Africans would build more online community platforms that would connect them and enable them to showcase their prowess. According to him, these efforts can be drawn into a larger base when the government recognizes its essence and pushes it towards the growth of digital economies.",
            author:"Guardians",
            date:" as at now",
            ),
        ],
       ),
     ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: pageIndex,
      onTap: (index) {
        //rebuild ui
        setState(() {
          pageIndex = index;
        });
        //log index
        //print("Index: $index");
      },
      selectedItemColor: Colors.red, 
    items: const[
      BottomNavigationBarItem(
        icon: Icon( Icons.home),
        label: "Home",
        ),
      BottomNavigationBarItem(
        icon: Icon( Icons.shopping_bag),
        label: "Ecommerce",
        ),
      BottomNavigationBarItem(
        icon: Icon( Icons.shopping_cart),
        label: "cart",
        ),
    ]),
     );
   
  }
}


//new class for blog list
class OTblogList{
  Widget getCard({thumbnail, title, desciption,author, date}){
    return Card(
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
                    image: NetworkImage(
                      thumbnail),
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
                    Text(title,
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
                            text:author,
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
                            text:date,
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
                    Text(desciption,
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
        );
  }
}