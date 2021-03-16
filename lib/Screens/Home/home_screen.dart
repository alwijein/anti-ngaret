import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/body.dart';
import 'package:latihan_x0x0x/Screens/Tugas/list_tugas_screen.dart';
import 'package:latihan_x0x0x/components/rounded_app_bar.dart';
import 'package:latihan_x0x0x/components/rounded_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final List<Widget> _routeNav = [
    //   HomeScreen(),
    //   ListTugas(),
    // ];
    RoundedBottomNavigationBar roundedBottomNavigationBar =
        new RoundedBottomNavigationBar();
    return SafeArea(
      child: Scaffold(
        appBar: RoundedAppBar(),
        body: Body(),
        bottomNavigationBar: RoundedBottomNavigationBar(),
      ),
    );
  }
}
