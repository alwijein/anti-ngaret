import 'package:flutter/material.dart';

class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {
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
        style:
            TextStyle(color: Colors.black, fontFamily: "Harlow", fontSize: 25),
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
