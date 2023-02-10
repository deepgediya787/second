import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

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
          height: 80,
         ),           
              Text("What is Your Age?",
              style: TextStyle(
                fontSize: 29
              ),),
              SizedBox(
                height: 350,
              ),
              Row(
                children: [
                  SizedBox(width: 35,),
                  ElevatedButton( child: Text("18-20",
                  style: TextStyle(
                    
                  ),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton( child: Text("18-20",
                  style: TextStyle(
                    
                  ),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  ),
                  )
                ],

              ),
               SizedBox(height:12),
              Row(
                children: [
                  SizedBox(width: 35,),
                  ElevatedButton( child: Text("18-20",
                  style: TextStyle(
                    
                  ),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton( child: Text("18-20",
                  style: TextStyle(
                    
                  ),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  ),
                  )
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
              )


          ],  
),
             

          
        );
    
  }
}