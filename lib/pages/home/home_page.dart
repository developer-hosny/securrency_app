import 'package:flutter/material.dart';
import 'package:securrency_app/pages/common_widgets/date_today_widget.dart';
import 'package:securrency_app/pages/home/widgets/live_prices_list_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const [
              DateTodayWidget(),
              Expanded(
                child: LivePricesListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
