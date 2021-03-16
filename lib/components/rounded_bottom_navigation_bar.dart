import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/constants.dart';

class RoundedBottomNavigationBar extends StatefulWidget {
  int selectedIndex = 0;
  @override
  _RoundedBottomNavigationBarState createState() =>
      _RoundedBottomNavigationBarState();
}

class _RoundedBottomNavigationBarState
    extends State<RoundedBottomNavigationBar> {
  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: widget.selectedIndex,
      selectedItemColor: kPrimaryColor,
      onTap: _onItemTapped,
      elevation: 3.0,
      backgroundColor: Colors.white,
    );
  }
}
