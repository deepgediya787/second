import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:y_not/pages/rgoal.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Duration duration = const Duration(minutes: 23);
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 34,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                          MaterialPageRoute(builder: (context) => Silder2()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            '''How much time are you ready 
     to spend on books daily?''',
            style: TextStyle(
              fontSize: 22,
              // CrossAxisAlignment:Center
            ),
          ),
          SizedBox(
            height: 430,
            child: CupertinoTimerPicker(
              onTimerDurationChanged: (value) {
                setState(() {
                  print(value);
                });
              },
              mode: CupertinoTimerPickerMode.ms,
              // backgroundColor: Colors.red,
              initialTimerDuration: Duration(minutes: 12),
            ),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            child: Text("Continue"),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/loginpage');
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
