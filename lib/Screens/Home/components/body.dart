import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/headline_text.dart';
import 'package:latihan_x0x0x/Screens/Home/components/rounded_card_deadline.dart';
import 'package:latihan_x0x0x/Screens/Home/components/rounded_card_kelas.dart';
import 'package:latihan_x0x0x/Screens/Home/components/user_profile.dart';
import 'package:latihan_x0x0x/Screens/Home/home_screen.dart';
import 'package:latihan_x0x0x/Screens/ListKuliah/list_kuliah_screen.dart';
import 'package:latihan_x0x0x/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // membuat variable untuk mengambil layar hp
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: [
          UserProfile(),
          HeadlineText(
            kText: "Kuliah Hari Ini",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ListKuliahScreen();
                  },
                ),
              );
            },
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
          ),
          SizedBox(
            height: 20.0,
          ),
          RoundedCardDeadline(
            listTugas: "Tugas 1 RPL Berbasis Komponen",
            press: () {},
          ),
          RoundedCardDeadline(
            listTugas: "Tugas 2 RPL Berbasis Komponen",
            press: () {},
          ),
          RoundedCardDeadline(
            listTugas: "Tugas 3 RPL Berbasis Komponen",
            press: () {},
          ),
          RoundedCardDeadline(
            listTugas: "Tugas 4 RPL Berbasis Komponen",
            press: () {},
          ),
        ],
      ),
    );
  }
}
