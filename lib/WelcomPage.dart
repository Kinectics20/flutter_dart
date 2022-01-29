import 'package:flutter/material.dart';
import 'package:flutter_application_1/Third.dart';

class WelcomePage extends StatelessWidget {
  final String email, name, phone, age;
  WelcomePage({
    required this.age,
    required this.name,
    required this.email,
    required this.phone,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USER LOGIN DETAILS PAGE'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Builder(builder: (context)=>
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyQuiz()));
            },
            child: Text('go back to login page'),
          ),),
          Text('your personal information are supplied below'),
          Text('USERNAME:  ${name.toUpperCase()}'),
          Text('USERMAIL:  $email'),
          Text('USERAGE:   $age'),
          Text('USERPHONENO:$phone'),
          Text('please click on the icon below to start your short quiz'),
        ],
      )),
      backgroundColor: Colors.orange,
      floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyQuiz(),
                ));
          }),
    );
  }
}
