import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/homePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Home", backgroundColor: Color.fromARGB(255, 6, 31, 66)),
    const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Cart"),
    const BottomNavigationBarItem(icon: Icon(Icons.arrow_back_ios_new_sharp), label: "Gallery"),
    const BottomNavigationBarItem(icon: Icon(Icons.airport_shuttle), label: "Profile"),
  ];
  List<Widget> widgets = [
    Cart(link: "assets/pic1.jpeg",),
    const Home(),
    const Text("Gallery"),
    const Text("Profile"),
  ];

  int index = 0;

  switchBottomNav(int i)
  {
    setState(() {
      index = i; 
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 6, 31, 66),
          title: const Text("E-Commerce App"),
        ),
        body: Center(child: widgets[index]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          items: items,
          onTap: switchBottomNav,
        ),
      ),
    );
  }
}