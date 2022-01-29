import 'package:flutter/material.dart';
 //material inport from pub.dev to allow me to use international file

void main() {
  //entry point of my application
  runApp(
      Reminder()); //the function that draw widget to screen import from material design
}

class Reminder extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    //an import from material design that the widget tree
    return MaterialApp(
      home: Scaffold(
        // the frame of my app
        appBar: AppBar(
          title: Container(
            child: Text('ADD TO LIST'),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Text('chart'),
              ),
            ),
          
                  ElevatedButton(onPressed: null, child: Text('ADD NEW CHART')),
                ],
              ),
            ),
          
            
        
      
      debugShowCheckedModeBanner: false,
    );
  }
}
