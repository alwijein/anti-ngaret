import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListView(
        children: [
          Text(
            'Hari Ini',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          RoundedCardTugas(textTugas: "Tugas 1 RPL Berbasis Komponen",)
        ],
      ),
    );
  }
}

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
