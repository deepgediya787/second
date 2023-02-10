
import 'package:flutter/material.dart';
import 'package:y_not/choice.dart';

import 'package:y_not/pages/first.dart';
import 'package:y_not/pages/goal.dart';
import 'package:y_not/pages/login.dart';
import 'package:y_not/select.dart';
import 'package:y_not/pages/xender.dart';



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
        "/": (BuildContext context) => MyApp()
        // "/firstpage": (BuildContext context) => FirstPage(),
        //  "/": (BuildContext context) => LoginPage(),
        //   "/loginpage": (BuildContext context) => LoginPage(),
      }
     


    );
  }
}