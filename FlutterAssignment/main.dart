import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Ecommerce App"),
            leading: Icon(Icons.add_alert_outlined),
          ),
          body: Column(
            children: [
              uiwidget(),
              uiwidget(),
              uiwidget(),
              uiwidget(),
              uiwidget()
            ],
          )),
    );
  }
}

Widget uiwidget() {
  return Container(
      margin: EdgeInsets.only(top: 15, right: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3),
            topRight: Radius.circular(3),
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/6.jpeg'), radius: 30),
          title: Text("Abstract Art"),
          subtitle: Row(
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.yellow,
              ),
              Text(" 5.0 (20 reviews) \n 20 Pieces 90\$ \n Quantity: 1"),
            ],
          )));
}
