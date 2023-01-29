import 'package:flutter/material.dart';

class GoalPage extends StatelessWidget {

  @override
  Widget build (BuildContext context){
    return Material(
        child: Column(
          children: [
           SizedBox(
            height: 38,
           ),
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
          height: 60,
         ),           
              Text("What Is Your Goal?",
              style: TextStyle(
                fontSize: 29
              ),),
              SizedBox(
                height: 35,
              ),
              
              Column(
                  children: [
                    ButtonTheme(
                        height: 40,
                        minWidth: 10,
                      
                  
                   child :ElevatedButton(onPressed: (){}, child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("🎯 Win at Work",
                      style: TextStyle(
                        fontSize: 18
                      ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                    ),)),
                  ],
              ),
               
              SizedBox(height:25),
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
              ),



          ],  
),
             

          
        );
    
  }
}