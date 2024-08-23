import 'package:flutter/material.dart';
import 'package:vkc_web_example/screen/dashboard/widget/dashboard_card.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
            DashboardCard(
              path: 'asset/svg/order_card.svg',
              title: "Total Employees",
              count: '404')
      ],),
    );
  }
}