import 'package:flutter/material.dart';

class LivePriceListItemCenterAreaWidget extends StatelessWidget {
  const LivePriceListItemCenterAreaWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 100),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'BTC',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(20 / 360),
                child: Container(
                  color: Colors.grey.shade400,
                  width: 1.5,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'USD',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
