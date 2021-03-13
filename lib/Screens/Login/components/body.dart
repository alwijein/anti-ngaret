import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan_x0x0x/Screens/Home/home_screen.dart';
import 'package:latihan_x0x0x/Screens/Login/components/background.dart';
import 'package:latihan_x0x0x/Screens/Register/register_screen.dart';
import 'package:latihan_x0x0x/components/rounded_password_field.dart';
import 'package:latihan_x0x0x/components/rounded_button.dart';
import 'package:latihan_x0x0x/components/rounded_input_field.dart';
import 'package:latihan_x0x0x/components/tidak_punya_akun_check.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    // membuat variable size untuk ukuran layar
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/book_lover.svg",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Masukkan Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "MASUK",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            TidakPunyaAkunCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
