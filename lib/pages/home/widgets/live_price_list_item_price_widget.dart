import 'dart:math';

import 'package:flutter/material.dart';

class LivePriceListItemPriceWidget extends StatelessWidget {
  const LivePriceListItemPriceWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${(Random().nextDouble() * (2 - 3) + 2).toString().substring(0, 8)} BTC',
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
