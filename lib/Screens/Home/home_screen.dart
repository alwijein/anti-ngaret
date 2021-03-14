import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/Screens/Home/components/body.dart';
import 'package:latihan_x0x0x/components/rounded_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: RoundedAppBar(),
        body: Body(),
      ),
    );
  }
}
