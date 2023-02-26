import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
      Duration duration = const Duration( minutes: 23);
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 34,),
          Row (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                  Icon(Icons.arrow_back_ios_new_sharp, size: 14),
                
                  Expanded(
                      child: Text("App Store"),
                      ),
                ],
                    ),
           SizedBox(
          height: 50,
         ),           
              Text('''How much time are you ready 
     to spend on books daily?''',
              style: TextStyle(
                fontSize: 22,
                // CrossAxisAlignment:Center
              ),),
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
            initialTimerDuration: Duration( minutes: 12),
          ),
                  ),

                   SizedBox(height:120),
              ElevatedButton( child: Text("Continue"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/loginpage');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: Color.fromARGB(255, 71, 128, 253)
              ),
              )
        ],
      ),
    );
  }
}