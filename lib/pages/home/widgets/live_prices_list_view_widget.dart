import 'package:flutter/material.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_view_item.dart';

class LivePricesListView extends StatelessWidget {
  const LivePricesListView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 25.0),
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 0,
            thickness: 2,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          final bool isFirst = index == 0 ? true : false;
          final bool isLast = index == 9 ? true : false;
          return ClipRRect(
            borderRadius: isFirst
                ? const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )
                : isLast
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )
                    : BorderRadius.zero,
            child: const LivePriceListViewItem(),
          );
        },
      ),
    );
  }
}
