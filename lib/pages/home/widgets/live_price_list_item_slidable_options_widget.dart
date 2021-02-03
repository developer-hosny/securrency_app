import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LivePriceListItemSlidableOptionsWidget extends StatelessWidget {
  const LivePriceListItemSlidableOptionsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Cancel',
          color: Colors.white,
          icon: Icons.close,
          onTap: () => null,
        ),
        IconSlideAction(
          caption: 'Change',
          color: Colors.white,
          icon: Icons.edit,
          onTap: () => null,
        ),
        IconSlideAction(
          caption: 'Repeat',
          color: Colors.white,
          icon: Icons.repeat,
          onTap: () => null,
        ),
      ],
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.transparent,
      ),
    );
  }
}
