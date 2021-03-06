import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Login/login_screen.dart';
import 'package:latihan_x0x0x/constants.dart';
import 'package:latihan_x0x0x/splash_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuliah Online',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
