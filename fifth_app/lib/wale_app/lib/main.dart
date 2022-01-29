import 'package:flutter/material.dart';

void main() {
  runApp(Maps());
}

class Maps extends StatelessWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mapshome(),
    );
  }
}

class Mapshome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        centerTitle: true,
        title: Text('YOUR BEST DATA PLUG'),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(10),
          child: Card(
            color: Colors.blue,
            child: Center(
              child: Column(
                children: [
                  Text('DATA IS LIFE STAY CONNECTED!!!'),
                  Text('BUY YOUR DATA PLAN HERE!!!'),
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: CircleAvatar(
                child: Text('BEST DATA SERVICES'),
              ),
            )
          ],
        )
      ]),
    );
  }
}
