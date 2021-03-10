import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan_x0x0x/Screens/Login/login_screen.dart';
import 'package:latihan_x0x0x/Screens/Register/components/background.dart';
import 'package:latihan_x0x0x/Screens/Register/components/or_divider.dart';
import 'package:latihan_x0x0x/Screens/Register/components/social_lite.dart';
import 'package:latihan_x0x0x/components/rounded_button.dart';
import 'package:latihan_x0x0x/components/rounded_input_field.dart';
import 'package:latihan_x0x0x/components/rounded_password_field.dart';
import 'package:latihan_x0x0x/components/tidak_punya_akun_check.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // membuat variable size untuk mengambil ukuran layar
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.4,
            ),
            RoundedInputField(
              hintText: "Masukkan Username",
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "DAFTAR",
              press: () {},
            ),
            TidakPunyaAkunCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialLite(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {
                    InkWell(
                      splashColor: Colors.amber,
                    );
                  },
                ),
                SocialLite(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialLite(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
