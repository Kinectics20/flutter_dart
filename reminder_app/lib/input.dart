import 'package:flutter/material.dart';

  
class  Input extends StatelessWidget {

TextEditingController Title = new TextEditingController();
  TextEditingController Worth = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [  Container(
              padding: EdgeInsets.all(10),
              
                
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Title,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'TITLE',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Worth,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'WORTH OR COST OF GOOD'),
                    ),
                  ),

      ],
    );
  }
}
