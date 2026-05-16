import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/core/gen/assets.gen.dart';
import 'package:responsive_dashboard_mvvm/features/dashboard/presentation/widgets/drawer/drawer_item.dart';

class DrawerItemsSection extends StatelessWidget {
  const DrawerItemsSection({super.key});

  static List<DrawerItemModel> drawerItems = [
    .new(iconSvg: Assets.svgs.category2.path, title: 'Dashboard'),
    .new(iconSvg: Assets.svgs.cardSend.path, title: 'My Transactions'),
    .new(iconSvg: Assets.svgs.graph.path, title: 'Statistics'),
    .new(iconSvg: Assets.svgs.wallet2.path, title: 'Wallet Account'),
    .new(iconSvg: Assets.svgs.chart2.path, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: drawerItems.map((e) => DrawerItem(item: e)).toList(),
    );
  }
}
