import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/constants.dart';

class TidakPunyaAkunCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const TidakPunyaAkunCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Tidak Punya Akun ? " : "Sudah Punya Akun ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Daftar" : "Masuk",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
