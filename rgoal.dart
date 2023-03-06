import 'package:flutter/material.dart';
import 'package:y_not/pages/choicechip.dart';
import 'package:y_not/pages/timesp.dart';

// import 'package:velocity_x/velocity_x.dart';
// import 'package:auto_size_text/auto_size_text.dart';
class Silder2 extends StatefulWidget {
  const Silder2({super.key});

  @override
  State<Silder2> createState() => _SilderState();
}

class _SilderState extends State<Silder2> {
  @override
  double _currentValue = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(

      //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //   elevation: 0,
      //   leading: Transform.translate(offset: Offset(-12,0),child:Icon(Icons.arrow_back_ios_new_sharp, size: 14, color: Colors.black)),
      //   titleSpacing: -29,
      //   title: Text("Back",style: TextStyle(
      //     color: Colors.black,
      //     fontSize: 14,
      //   ),),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            // mainAxisAlignment : MainAxisAlignment.spaceEvenly
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
                          MaterialPageRoute(
                              builder: (context) => ChoiceChipPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Text(
                '''How many books would you like
              to finish weekly ? ''',
                style: TextStyle(fontSize: 22),
              ),
              Image.asset(
                "assets/image/readinggoal.png",
                height: 380,
                width: 380,
              ),

              Text(
                _currentValue.toString(),
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 0, 89, 255),
                ),
              ),
              // SizedBox(height: -110,),
              // TextFormField(
              //   keyboardType: TextInputType.number,
              // ),
              Slider(
                  min: 0,
                  max: 10,
                  divisions: 20,
                  // label: _currentValue.round().toString(),
                  // activeColor: Colors.red,
                  // inactiveColor: Colors.grey,
                  thumbColor: Color.fromARGB(255, 0, 89, 255),
                  value: _currentValue,
                  onChanged: (value) {
                    setState(() {
                      _currentValue = value;
                    });
                  }),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                child: Text("Continue"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Timer()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color.fromARGB(255, 0, 89, 255)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
