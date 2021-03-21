import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:latihan_x0x0x/constants.dart';
import 'package:latihan_x0x0x/util/date_time_picker.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _dateController = new TextEditingController();

  DateTime selectedDate = DateTime.now();
  var myFormat = DateFormat('d-MM-yyyy');

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    setState(() {
      selectedDate = picked ?? selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 0,
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration.collapsed(
                      hintText: "Masukkan Tugas Di Sini",
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () => _selectDate(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.date_range_outlined,
                        color: kPrimaryColor,
                      ),
                      Text(
                        'Masukkan Tanggal',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      Text(
                        '${myFormat.format(selectedDate)}',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
