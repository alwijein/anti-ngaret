import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget{
  const RoundedAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        "Kuliah Online",
        style: GoogleFonts.armata(textStyle: TextStyle(color: Colors.black))
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}