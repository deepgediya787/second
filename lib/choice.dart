import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  bool _selectedOption = false;
  bool _Selected = false;
  
  @override
  Widget build(BuildContext context) {
    return Material( 
      child: new Column(
        children: [
          SizedBox(height: 35,),
          Row(
          children: [
                  Icon(Icons.arrow_back_ios_new_sharp, size: 14),
                  Expanded(
                      child: Text("App Store"),
                      ),
                ],),

          SizedBox(height: 60,),
          Text('''Choose areas you'd 
      like to elevate''',
      style: TextStyle(fontSize: 26),
      ),
      SizedBox(height: 160,),

       
    ChoiceChip(
    selected: _Selected,
    label: Text('Motivation'),
    labelStyle: TextStyle(color: Colors.white),
    backgroundColor: Colors.black54,
    selectedColor: Colors.blue,
    onSelected: (bool selected) {
      setState(() {
        _Selected = !_Selected;
        
      });
    }
  ),

   ChoiceChip(
    selected: _Selected,
    label: Text('Motivation'),
    labelStyle: TextStyle(color: Colors.white),
    backgroundColor: Colors.black54,
    selectedColor: Colors.blue,
    onSelected: (bool selected) {
      setState(() {
        _Selected = !_Selected;
        
      });
    }
  ),
  

      Column(
        children: <Widget>[
         
          Wrap(
  children: <Widget>[
   ChoiceChip(
  label: Text('Option 1'),
  labelStyle: TextStyle(color: Colors.white),
    backgroundColor: Colors.black54,
    selectedColor: Colors.blue,
  selected: _selectedOption == 1,
  onSelected: (bool selected) {
    setState(() {
      _selectedOption = (selected ? 1 : null) as bool;
    });
  },
)


  
  ],
)
        ],
        
      ),
      
        
        ],
      ),
      
     
      
    );
  }
 

}