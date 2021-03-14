import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/headline_text.dart';
import 'package:latihan_x0x0x/Screens/Home/components/rounded_card_kelas.dart';
import 'package:latihan_x0x0x/Screens/Home/home_screen.dart';
import 'package:latihan_x0x0x/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // membuat variable untuk mengambil layar hp
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  "assets/images/users/user001.png",
                  height: size.height * 0.1,
                  width: size.height * 0.1,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hi,",
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        Text(
                          " Alwi Jaya",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Universitas Muslim Indonesia"),
                  ],
                ),
              ),
            ],
          ),
          HeadlineText(
            kText: "Kuliah Hari Ini",
            press: () {},
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: size.height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RoundedCardKelas(),
                RoundedCardKelas(),
                RoundedCardKelas(),
              ],
            ),
          ),
          HeadlineText(
            kText: "Deadline Hari Ini",
            press: () {},
          )
        ],
      ),
    );
  }
}
