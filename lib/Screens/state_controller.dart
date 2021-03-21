import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/body.dart';
import 'package:latihan_x0x0x/Screens/Home/home_screen.dart';
import 'package:latihan_x0x0x/Screens/Pengaturan/pengaturan_screen.dart';
import 'package:latihan_x0x0x/Screens/Tugas/list_tugas_screen.dart';
import 'package:latihan_x0x0x/components/rounded_app_bar.dart';

import '../constants.dart';

class StateController extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<StateController> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _routeNav = [
    HomeScreen(),
    ListTugas(),
    PengaturanScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: RoundedAppBar(),
        // body: ListTugas(),
        body: _routeNav[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notes_sharp,
                size: 30.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30.0,
              ),
              title: SizedBox.shrink(),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: kPrimaryColor,
          onTap: _onItemTapped,
          elevation: 3.0,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
