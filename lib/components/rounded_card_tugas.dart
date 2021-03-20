import 'package:flutter/material.dart';


class RoundedCardTugas extends StatelessWidget {
  final String textTugas;
  final Function press;
  const RoundedCardTugas({
    Key key, this.textTugas, this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.circle,
            color: Colors.white,
          ),
          Text(
            textTugas,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
