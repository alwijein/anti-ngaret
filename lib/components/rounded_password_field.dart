import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/components/text_field_container.dart';
import 'package:latihan_x0x0x/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffix: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          hintText: "Masukkan Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
