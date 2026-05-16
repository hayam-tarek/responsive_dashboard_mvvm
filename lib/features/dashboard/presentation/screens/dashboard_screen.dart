import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/core/styles/app_colors.dart';
import 'package:responsive_dashboard_mvvm/core/widgets/adaptive_layout_builder.dart';
import 'package:responsive_dashboard_mvvm/features/dashboard/presentation/widgets/dashboard_desktop_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: AdaptiveLayoutBuilder(
        mobileLayoutBuilder: (context) =>
            const Center(child: Text('Mobile Layout')),
        tabletLayoutBuilder: (context) =>
            const Center(child: Text('Tablet Layout')),
        desktopLayoutBuilder: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
