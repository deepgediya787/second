import 'package:flutter/material.dart';
import 'package:y_not/pages/goal.dart';
import 'package:y_not/pages/login.dart';
import 'package:y_not/pages/xender.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // var _gender = "";
  var _age = "";
  bool _genderSelected = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 38,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 330,
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(35, 25),
                      primary: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "What is Your Age?",
            style: TextStyle(fontSize: 29),
          ),
          SizedBox(
            height: 350,
          ),
          Row(
            children: [
              SizedBox(
                width: 35,
              ),
              ElevatedButton(
                child: Text(
                  "12-29",
                  style: TextStyle(),
                ),
                onPressed: () {
                  setState(() {
                    _age = "1";
                    _genderSelected = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  primary: _age == "1" ? Colors.blue : Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                child: Text(
                  "30-39",
                  style: TextStyle(),
                ),
                onPressed: () {
                  setState(() {
                    _age = "2";
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  primary: _age == "2" ? Colors.blue : Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(
                width: 35,
              ),
              ElevatedButton(
                child: Text(
                  "40-49",
                  style: TextStyle(),
                ),
                onPressed: () {
                  setState(() {
                    _age = "3";
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  primary: _age == "3" ? Colors.blue : Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                child: Text(
                  "50+",
                  style: TextStyle(),
                ),
                onPressed: () {
                  setState(() {
                    _age = "4";
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  primary: _age == "4" ? Colors.blue : Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 57, vertical: 25),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          ElevatedButton(
            child: Text("Continue"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => XenderPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Color.fromARGB(255, 71, 128, 253)),
          )
        ],
      ),
    );
  }
}
