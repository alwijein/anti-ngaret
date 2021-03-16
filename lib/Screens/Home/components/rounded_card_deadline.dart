import 'package:flutter/material.dart';
import 'package:latihan_x0x0x/constants.dart';

class RoundedCardDeadline extends StatefulWidget {
  final String listTugas;
  final Function press;
  const RoundedCardDeadline({
    Key key,
    this.listTugas,
    this.press,
  }) : super(key: key);

  @override
  _RoundedCardDeadlineState createState() => _RoundedCardDeadlineState();
}

class _RoundedCardDeadlineState extends State<RoundedCardDeadline> {
  bool _checkFavController = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.press,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: size.height * 0.07,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                // border: Border(
                //   left:
                //       BorderSide(color: kPrimaryColor, width: size.width * 0.02),
                // ),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            margin: EdgeInsets.fromLTRB(28, 5, 15, 5),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            height: size.height * 0.07,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.shade300,
              //     offset: Offset.zero,
              //     spreadRadius: 0,
              //     blurRadius: 5,
              //   )
              // ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.listTugas,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (!_checkFavController) {
                        _checkFavController = true;
                      } else {
                        _checkFavController = false;
                      }
                    });
                  },
                  child: Icon(
                    _checkFavController
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: _checkFavController ? kPrimaryColor : Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
