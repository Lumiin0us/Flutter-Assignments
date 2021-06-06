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
              Container(
                  margin: EdgeInsets.only(top: 100, right: 200, bottom: 20),
                  child: Text(
                    "ACCOUNT INFORMATION",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 300, bottom: 3),
                    child: Text("Full Name",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 320, bottom: 20),
                    child: Text("User"),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 330, bottom: 3),
                    child: Text("Email",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 260, bottom: 20),
                    child: Text("User@gmail.com"),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 320, bottom: 3),
                    child: Text("Phone",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 280, bottom: 20),
                    child: Text("+902021321"),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 310, bottom: 3),
                    child: Text("Address",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 300, bottom: 20),
                    child: Text("E/123-132"),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 320, bottom: 3),
                    child: Text("Gender",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 330, bottom: 20),
                    child: Text("Male"),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 290, bottom: 3),
                    child: Text("Date Of Birth",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 300, bottom: 20),
                    child: Text("23-1-2021"),
                  )
                ],
              )
            ],
          )),
    );
  }
}

Widget uiwidget() {
  return ListTile(
      leading: (Icon(
        Icons.account_circle_rounded,
        size: 200,
      )),
      title: Container(
        margin: EdgeInsets.only(top: 50, bottom: 5),
        child: Text(
          "User",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      subtitle: Column(
        children: [
          Container(
              margin: EdgeInsets.only(right: 50, bottom: 30),
              child: Text(" abc@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold))),
          Container(
              margin: EdgeInsets.only(right: 110),
              child: Text("logout", style: TextStyle(color: Colors.purple)))
        ],
      ));
}
