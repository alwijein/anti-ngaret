import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan_x0x0x/Screens/Home/home_screen.dart';
import 'package:latihan_x0x0x/constants.dart';

class RoundedCardKelas extends StatelessWidget {
  const RoundedCardKelas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset.zero,
              spreadRadius: 0,
              blurRadius: 5)
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: kPrimartLightColor,
            onTap: () {
              print('Card tapped.');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/book_reading.svg",
                      height: size.height * 0.1),

                  // divider sementara
                  Divider(
                    thickness: 1,
                    color: kPrimaryColor,
                  ),
                  Divider(
                    thickness: 1,
                    color: kPrimaryColor,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RPL Berbasis Komponen',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Senin 13.00 - 14:40 (C3)'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
