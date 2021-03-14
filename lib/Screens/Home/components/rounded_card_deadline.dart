import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/constants.dart';

class RoundedCardDeadline extends StatelessWidget {
  final String listTugas;
  final Function press;
  const RoundedCardDeadline({
    Key key,
    this.listTugas,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        height: size.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border(
            left: BorderSide(color: kPrimaryColor, width: size.width * 0.02),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              listTugas,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
