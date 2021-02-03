import 'dart:math';

import 'package:flutter/material.dart';

class LivePriceItemAmountWidget extends StatelessWidget {
  const LivePriceItemAmountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${(Random().nextDouble() * (35000 - 34000) + 34000).toString().substring(0, 8)} USD',
      overflow: TextOverflow.visible,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }
}
