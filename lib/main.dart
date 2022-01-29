import 'package:flutter/material.dart';
import 'package:flutter_application_1/WelcomPage.dart';
import 'WelcomPage.dart';

void main() {
  runApp(MyLogin());
}

class MyLogin extends StatefulWidget {
  MyLogin({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyLoginState();
  }
}

class MyLoginState extends State<MyLogin> {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("LOGIN PAGE FOR USER"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.baby_changing_station),
                hintText: 'USER NAME',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'USER EMAIL',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: age,
              decoration: InputDecoration(
                hintText: 'USER AGE',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: 'USER NUMBER',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Builder(
              builder: (context) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomePage(
                              name: name.text,
                              email: email.text,
                              age: age.text,
                              phone: phone.text,
                            ),
                          ));
                    },
                    child: Text('SUBMIT TO MOVE TO THE NEXT PAGE'),
                  ))
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () => 'click',
            child: Icon(Icons.settings),
            backgroundColor: Colors.red),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
