import 'package:flutter/material.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_time_widget.dart';

class LivePriceListItemListAreaLeftWidget extends StatelessWidget {
  const LivePriceListItemListAreaLeftWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 100),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Buy',
                    style: TextStyle(
                      color: Colors.green.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: LivePriceListItemTimeWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
