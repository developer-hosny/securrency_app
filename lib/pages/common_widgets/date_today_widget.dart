import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTodayWidget extends StatelessWidget {
  const DateTodayWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          DateFormat('dd MMM').format(DateTime.now()),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
