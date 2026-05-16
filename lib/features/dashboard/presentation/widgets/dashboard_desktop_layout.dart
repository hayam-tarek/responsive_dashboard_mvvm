import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/features/dashboard/presentation/widgets/drawer/dashboard_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Expanded(flex: 1, child: DashboardDrawer())]);
  }
}
