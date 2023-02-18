import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  bool _selectedOption = false;
  bool _Selected = false;
  int? _value = 1;
  
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
    // backgroundColor: Colors.black54,
    selectedColor: Colors.blue,
  // selected: _selectedOption == 1,
  onSelected: (bool selected) {
    setState(() {
      // _Selected= false;
      // _selectedOption = !_Selected ;
      _Selected: !_Selected;
    });
  }, selected: _Selected, 
)


  
  ],
)
        ],
        
      ),

       Wrap(
		children: List.generate(
			3,
			(int index) {
			return ChoiceChip(
				padding: EdgeInsets.all(8),
				label: Text('Item '),
				selectedColor: Colors.green,
				selected: _value == index,
				onSelected: (bool selected) {
				setState(() {
					_value = selected ? index : null;
				});
				},
			);
			},
		).toList(),
		),
      
        
        ],
      ),
      
     
      
    );
  }
 

}