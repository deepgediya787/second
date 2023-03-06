import 'package:flutter/material.dart';
import 'package:y_not/pages/choicechip.dart';
import 'package:y_not/pages/xender.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  var _selected = "";
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
                      MaterialPageRoute(builder: (context) => XenderPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "What Is Your Goal?",
            style: TextStyle(fontSize: 29),
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              ButtonTheme(
                  height: 40,
                  minWidth: 10,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selected = "1";
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "🎯 Win at Work",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _selected == "1"
                          ? Color.fromARGB(255, 147, 202, 246)
                          : Colors.white,
                      foregroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 25),
          ElevatedButton(
            child: Text("Continue"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChoiceChipPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Color.fromARGB(255, 71, 128, 253)),
          ),
        ],
      ),
    );
  }
}
