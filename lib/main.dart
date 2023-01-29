
import 'package:flutter/material.dart';
import 'package:y_not/first.dart';
import 'package:y_not/goal.dart';
import 'package:y_not/login.dart';
import 'package:y_not/xender.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build (BuildContext context){
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      // initialRoute: "/",
      routes:{
        "/": (context) => MyApp()
        // "/firstpage": (BuildContext context) => FirstPage(),
        //  "/": (BuildContext context) => LoginPage(),
        //   "/loginpage": (BuildContext context) => LoginPage(),
      }
     


    );
  }
}