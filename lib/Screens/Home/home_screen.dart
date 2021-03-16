import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/body.dart';
import 'package:latihan_x0x0x/Screens/Pengaturan/pengaturan_screen.dart';
import 'package:latihan_x0x0x/Screens/Tugas/list_tugas_screen.dart';
import 'package:latihan_x0x0x/components/rounded_app_bar.dart';
import 'package:latihan_x0x0x/components/rounded_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
