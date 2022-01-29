import 'package:flutter/material.dart';
import './blueprint.dart';
import 'package:intl/intl.dart';
class Newtransaction extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      //a constructor assign value to my property or field or initiallizing it
      id: 'mr wale',
      title: 'food money',
      worth: 6,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'mr ben',
      title: 'monthly allowance',
      worth: 7,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((txt) {
        return (Card(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.blue,
                  width: 3,
                )),
                child: Text(
                  '\#${txt.worth}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      txt.title,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      child: Text(
                    DateFormat.yMMMMEEEEd().format(txt.date),
                    style: TextStyle(color: Colors.red),
                  ))
                ],
              )
            ],
          ),
        ));
      }).toList(),
    );
  }
}
