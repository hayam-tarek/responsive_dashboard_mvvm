import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/core/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard_mvvm/features/dashboard/presentation/widgets/dashboard_desktop_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => Center(child: Text('Mobile Layout')),
        tabletLayout: (context) => Center(child: Text('Tablet Layout')),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
