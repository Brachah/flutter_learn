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
   //declare property indexcount
   int indexCount = 0;
   //scaffoldkey
  final GlobalKey<ScaffoldState>
  _scaffoldkey =GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Color.fromARGB(255, 207, 211, 170),
    key: _scaffoldkey,
    appBar: AppBar(
      title: const Text("OT Application"),
      backgroundColor: Colors.green,
      elevation: 10, 
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    //endDrawer is similar to Drawer except that it defaultly start from rhs 
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration
              (
                color: Colors.green,
              ),
            child: Text
            ("Welcome to OT Application",
            style: TextStyle
              (
                color: Colors.white,
                fontSize: 24,
              ),
            )
            ),
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"),
                backgroundColor: Colors.white,
              ),
              accountName: Text("Funke"), 
              accountEmail: Text("berachah.cms@gmail.com"),
              ),
            ListTile(title: Text("Home"),),
            Divider(
              color: Colors.black,
              height: 0,
              ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
            ),
            Divider(
              color: Colors.black,
              height: 0,
              ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
            ),
            Divider(
              color: Colors.black,
              height: 0,
              ),
            ListTile(
              title: Text("Setting"),
              leading:Icon(Icons.settings),
            ),
            Divider(
              color: Colors.black,
              height: 0,
              ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
            ),
            Divider(
              color: Colors.black,
              ),
            ListTile(title: Text("App Version: 1.0.0"),)
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        print("Am working");
      },
      child: Icon(Icons.share),
    ),
    body: SingleChildScrollView( 
      child: Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text("App is working", 
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),),
          //image from network
          Image.network(
            "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
          width: 100.0,
          height: 100.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Enter your name",
              hintText: "Type your name",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("""
                    This is a sampling test This is a sampling test This is a sampling test
                    This is a sampling test This is a sampling test This is a sampling test
                    This is a sampling test This is a sampling test This is a sampling test
                    This is a sampling test This is a sampling test This is a sampling test
                    This is a sampling test This is a sampling test This is a sampling test""",
                    textAlign: TextAlign.center, ),
                    
          ),
          //add elevatedbutton
          ElevatedButton(
            onPressed:() {
              //print
              print("Button Pressed");

              //show snackbar
              _scaffoldkey.currentState?.showSnackBar
              (
                SnackBar(
                  content: Text("Button Pressed"),
                  backgroundColor: Colors.red,
                ),
              );
            } , 
            child: Text("Click me"))

        ],
      ),
    ),
    ),
    resizeToAvoidBottomInset: true,
    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    persistentFooterButtons: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton
          (
            icon: Icon(Icons.home),
            onPressed: () {
              print("Home Button Pressed");
            },
          ),
          IconButton
          (
            icon: Icon(Icons.contact_phone),
              onPressed: () {
                print("Contact Button Pressed");
              },   
          ),
          IconButton(
            icon: Icon(Icons.settings),
              onPressed: () {
                print("Settings Button Pressed");
              },   
          )
        ],
      )
    ],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: indexCount,
      fixedColor: Colors.red,
      items: const [
        BottomNavigationBarItem
        (
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem
        (
          
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
         BottomNavigationBarItem
        (
          
          icon: Icon(Icons.contact_phone),
          label: "Contact",
        ),   
      ],
      onTap: (int index) {
        print("Index: $index");
        //update indexCount state
        setState(() {
          indexCount = index;
        });
      },
    ),
   ); 
  }
}