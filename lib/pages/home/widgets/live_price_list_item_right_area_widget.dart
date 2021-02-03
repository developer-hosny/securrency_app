import 'package:flutter/material.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_amount_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_price_widget.dart';

class LivePriceListItemRightAreaWidget extends StatelessWidget {
  const LivePriceListItemRightAreaWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Amount',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Expanded(
                      flex: 2,
                      child: LivePriceListItemPriceWidget(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    const Expanded(
                      flex: 2,
                      child: LivePriceItemAmountWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
