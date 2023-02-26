import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: Transform.translate(offset: Offset(-12,0),child:Icon(Icons.arrow_back_ios_new_sharp, size: 14, color: Colors.black)),
        titleSpacing: -29,
        title: Text("Back",style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            // mainAxisAlignment : MainAxisAlignment.spaceEvenly
            children: [
              SizedBox(height: 30,),
              Text(_currentValue.toString(), style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                
              ),
              ),
              // SizedBox(height: -110,),
              // TextFormField(
              //   keyboardType: TextInputType.number,
              // ),
              Slider(
                min: 0 ,
                max: 10,
                divisions: 20,
                // label: _currentValue.round().toString(),
                // activeColor: Colors.red,
                // inactiveColor: Colors.grey,
                thumbColor: Colors.blue,
                value: _currentValue, 
              onChanged: (value){
                setState(() {
                  _currentValue = value;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}