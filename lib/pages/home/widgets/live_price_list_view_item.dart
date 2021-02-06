import 'package:flutter/material.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_center_area_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_left_area_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_right_area_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_slidable_options_widget.dart';

class LivePriceListViewItem extends StatelessWidget {
  const LivePriceListViewItem({Key key}) : super(key: key);

  Widget _buildContent(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: LivePriceListItemListAreaLeftWidget(),
        ),
        const Expanded(
          child: LivePriceListItemCenterAreaWidget(),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: MediaQuery.of(context).orientation == Orientation.portrait
              ? 2
              : 1,
          child: const LivePriceListItemRightAreaWidget(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildContent(context),
          ),
          const Positioned.fill(
            child: LivePriceListItemSlidableOptionsWidget(),
          ),
        ],
      ),
    );
  }
}
