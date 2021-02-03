import 'package:flutter/material.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_center_area_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_left_area_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_right_area_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_price_list_item_slidable_options_widget.dart';

class LivePriceListViewItem extends StatelessWidget {
  const LivePriceListViewItem({Key key}) : super(key: key);

  Widget _buildContent() {
    return Row(
      children: const [
        Expanded(
          child: LivePriceListItemListAreaLeftWidget(),
        ),
        Expanded(
          child: LivePriceListItemCenterAreaWidget(),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: LivePriceListItemRightAreaWidget(),
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
            child: _buildContent(),
          ),
          const Positioned.fill(
            child: LivePriceListItemSlidableOptionsWidget(),
          ),
        ],
      ),
    );
  }
}
