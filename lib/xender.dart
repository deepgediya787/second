import 'package:flutter/material.dart';

class XenderPage extends StatelessWidget {

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
              Text("Select Your Gender",
              style: TextStyle(
                fontSize: 29
              ),),
              SizedBox(
                height: 350,
              ),
              Row(
                children: [
                  SizedBox(width: 15,),
                  ElevatedButton( child:Image.asset("assets/image/male.png",
                  scale: 9,),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  ),
                  ),

                  // ElevatedButton.icon(onPressed: (){}, 
                  // icon: Image.asset("assets/image/female.png",
                  // scale: 7),
                  
                  // label: Text("Male",
                  
                  // style: TextStyle(
                  
                  // ),),
                  // style: ElevatedButton.styleFrom(
                  //   foregroundColor: Colors.black,
                  //   primary: Colors.white,
                  //   padding: EdgeInsets.symmetric(horizontal: 1, vertical: 25),
                  // )
                  // ),
                   SizedBox(width: 5),
                   ElevatedButton( child:Image.asset("assets/image/female.png",
                  scale: 9,),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  ),
                  ),
                  SizedBox(width: 5),
                   ElevatedButton( child:Image.asset("assets/image/other.png",
                  scale: 11),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  ),
                  ),



                 
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