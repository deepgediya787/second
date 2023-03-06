import 'package:flutter/material.dart';
import 'package:y_not/pages/goal.dart';
import 'package:y_not/pages/rgoal.dart';
import 'package:y_not/pages/timesp.dart';

class ChoiceChipPage extends StatefulWidget {
  @override
  _ChoiceChipPageState createState() => _ChoiceChipPageState();
}

class _ChoiceChipPageState extends State<ChoiceChipPage> {
  List<String> _selected = [];
  List<String> _options = [
    "Motivation",
    "Leadership",
    "Management",
    "Planning",
    "Time-Management",
    "Parenting",
    "Emotions",
    "Nutrition",
    "Habits",
    "Self-Confidence",
    "Intimacy",
    "Mindset",
    "Self-Care",
    "Communication",
    "Exercises",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 320,
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
                        MaterialPageRoute(builder: (context) => GoalPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Choose areas you add like to elevate",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 10,
              // runSpacing: 10,
              children: _options.map((e) {
                return ChoiceChip(
                  label: Text(
                    e,
                    style: TextStyle(
                      color: _selected.contains(e)
                          ? Color.fromARGB(255, 255, 255, 255)
                          : Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  selected: _selected.contains(e),
                  selectedColor: Color.fromARGB(255, 67, 108, 255),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selected.add(e);
                      } else {
                        _selected.remove(e);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Silder2()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 67, 108, 255),
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
