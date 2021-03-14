import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Kuliah Online",
          style: TextStyle(color: Colors.black, fontFamily: "Harlow Solid"),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              onPressed: () {}),
        ],
      ),
      body: Body(),
    );
  }
}
