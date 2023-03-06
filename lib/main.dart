
import 'package:flutter/material.dart';
import 'package:y_not/pages/choicechip.dart';
import 'package:y_not/pages/rgoal.dart';

import 'package:y_not/pages/first.dart';
import 'package:y_not/pages/goal.dart';
import 'package:y_not/pages/login.dart';
import 'package:y_not/pages/timesp.dart';
import 'package:y_not/pages/xender.dart';


// @dart=2.9
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
        // "/": (BuildContext context) => ChoiceChipPage(),
        "/": (context) => LoginPage(),
        "first": (context) => FirstPage(),
        "goal":(context) => GoalPage(),
        "Xender":(context) => XenderPage(), 
        "Choicechip":(context) => ChoiceChipPage(),
        "rgoal":(context) => Silder2(),
        "timesp":(context) => Timer()
          
      }
     


    );
  }
}