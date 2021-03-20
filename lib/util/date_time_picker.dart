import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
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
    return InkWell(
  onTap: () => _selectDate(context),
  child: IgnorePointer(
    child: TextField(
      controller: _dateController,
      decoration: InputDecoration(

        hintText: ('${myFormat.format(selectedDate)}'),
      ),

    ),
  ),
);
  }
}