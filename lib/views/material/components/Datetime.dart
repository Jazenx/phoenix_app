import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DatetimeDemo extends StatefulWidget {
  @override
  _DatetimeDemoState createState() => _DatetimeDemoState();
}

class _DatetimeDemoState extends State<DatetimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 30);

  Future<void> _selectDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (date == null) return;
    setState(() {
      selectedDate = date;
    });
  }

  Future<void> _selectTime() async {
    final TimeOfDay time =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (time == null) return;
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datetime'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: _selectDate,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(DateFormat.yMMMd().format(selectedDate)),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            InkWell(
              onTap: _selectTime,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(selectedTime.format(context)),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
