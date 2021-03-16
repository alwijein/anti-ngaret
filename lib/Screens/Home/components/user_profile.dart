import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // membuat variable untuk mengambil layar hp
    Size size = MediaQuery.of(context).size;
    return Row(
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
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
    );
  }
}
