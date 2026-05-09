import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/features/dashboard/presentation/screens/dashboard_screen.dart';

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
