import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedOption = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ChoiceChip(
            label: Container(
              width: 50.0,
              height: 50.0,
              color: Colors.red,
              
            ),
            
            selected: _selectedOption == "Option 1",
            onSelected: (bool selected) {
              setState(() {
                if (selected) {
                  _selectedOption = "Option 1";
                }
              });
            },
          ),
          ChoiceChip(
            label: Container(
              width: 100.0,
              height: 50.0,
              color: Colors.blue,
            ),
            selected: _selectedOption == "Option 2",
            onSelected: (bool selected) {
              setState(() {
                if (selected) {
                  _selectedOption = "Option 2";
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
