import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LivePriceListItemTimeWidget extends StatefulWidget {
  const LivePriceListItemTimeWidget({Key key}) : super(key: key);

  @override
  _LivePriceListItemTimeWidgetState createState() =>
      _LivePriceListItemTimeWidgetState();
}

class _LivePriceListItemTimeWidgetState
    extends State<LivePriceListItemTimeWidget> {
  String _timeNow = DateFormat('HH:mm:ss').format(DateTime.now());
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      _timeNow = DateFormat('HH:mm:ss').format(DateTime.now());
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timeNow,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
