import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // membuat variable size untuk ukuran layar
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimartLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
