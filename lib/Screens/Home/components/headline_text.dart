import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  final String kText;
  final Function press;
  const HeadlineText({
    Key key,
    this.kText,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            kText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "see more",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
