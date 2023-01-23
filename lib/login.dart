import 'dart:math';

import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {
  
  @override
  Widget build (BuildContext context){
    return Material(
      color: Colors.white,
     child: Column(
     
      children: [
        SizedBox(
          height: 60,
          
          
        ),
       
           Container(
            width: 330,
            alignment: Alignment.topLeft,
             child: ElevatedButton(
                  
                  child: Text("Skip",
                  style: TextStyle(
                    color: Colors.black
                  ),),
                  style: ElevatedButton.styleFrom(
                    
                    minimumSize: Size(35, 25),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                  
                  onPressed: (){
                      
                  },

                ),
           ),
              SizedBox(
                height: 20,
              ),
        Image.asset(
          "assets/image/img.jpg",
          fit : BoxFit.cover
        ),
        
        Text(
          "Become A Better You",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
         SizedBox(
        height:10.0,
      ),
        Center(
          child:
           Text("Login To Personalize your "),
           
          ),
           SizedBox(
        height:5.0,
      ),
          Text("Experience And Track Your Progress"),
          SizedBox(
        height:80.0,
      ),
          Text("By Continuing I Agree With ",
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),),
          Text("The Privacy Policy, Terms & Conditions",
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
            decoration: TextDecoration.underline,
            ),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                
                child: Text("Continue With Android",),
                style: ElevatedButton.styleFrom(

                  minimumSize: Size(350, 45),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
                
                onPressed: (){
                    
                },

              ),
              SizedBox(
                height: 30,
              ),
           Wrap( children: <Widget>[
             ElevatedButton( child: Image.asset("assets/image/google.png",
               height: 40,
               width: 25,),
               style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 255, 255),
                minimumSize: Size(45,50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),)
               ),
            
              onPressed: (() {
                
              }),
               ),
               SizedBox(
                width: 20,
               ),
               ElevatedButton( child: Image.asset("assets/image/email.png",
               height: 40,
               width: 25,),
               style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 255, 255),
                minimumSize: Size(45,50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),)
               ),
            
              onPressed: (() {
                
              }),
               ),
             ] )
            ],
          ),
        ),
        
      ],
    

      
    
      
     )


    );
  }
}