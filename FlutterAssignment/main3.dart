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
              Container(
                width: 200,
                child: TextField(
                  decoration: (InputDecoration(hintText: 'Username')),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 300, top: 20, bottom: 20),
                child: Text("History"),
              ),
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
  return ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage('assets/6.jpeg'), radius: 30),
      title: Text("Abstract Art"),
      subtitle: Row(
        children: [
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.yellow,
          ),
          Text(" 5.0 (20 reviews) \n 20 Pieces \n Quantity: 1"),
          Text("\$90")
        ],
      ));
}
