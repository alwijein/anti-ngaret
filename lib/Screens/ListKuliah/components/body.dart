import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      children: [
        Icon(Icons.arrow_back),
        Container(
          height: size.height * 0.08,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset.zero,
                  spreadRadius: 0,
                  blurRadius: 5)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.class__outlined,
                size: 30,
              ),
              Container(
                height: size.height * 0.09,
                width: size.width * 0.005,
                color: Colors.grey.shade300,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'RPL Berbasis Komponen',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Senin 13.00 - 14:40 (C3)',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
