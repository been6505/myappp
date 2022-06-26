import 'dart:async';

import 'package:flutter/material.dart';

import 'Menu.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Myapp",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

//ปุ่มเลข
class MyHomePageState extends State<MyHomePage> {
  // กลุ่มข้อมูล
  List<Menu> menu = [
    Menu("Photoshop", "3000", "assets/images/p (1).png"),
    Menu("Ailustrator", "4000", "assets/images/p (2).png"),
    Menu("Premiere Pro", "5000", "assets/images/p (3).png"),
    Menu("After Effects", "7000", "assets/images/p (4).png"),
    Menu("Adobe Productions", "10000", "assets/images/p (5).png"),
    Menu("iOS application", "12000", "assets/images/p (6).png"),
    Menu("Android application", "12000", "assets/images/p (7).png"),
    Menu("Web application", "12000", "assets/images/p (8).png"),
    Menu("Photographer", "12000", "assets/images/p (9).jpg"),
    Menu("Cinematographer", "12000", "assets/images/p (10).jpg")
  ];
//แสดงข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Betas Graphics"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              Menu me = menu[index];
              return ListTile(
                leading: Image.asset(me.img),
                title: Text(
                  me.name,
                  style: TextStyle(fontFamily: "times", fontSize: 25),
                ),
                subtitle: Text(
                  "ราคา " + me.price + " บาท",
                  style: TextStyle(fontFamily: "leelawade", fontSize: 20),
                ),
                onTap: () {
                  print("คุณเลือกงาน : " + me.name);
                },
              );
            }));
  }
}
