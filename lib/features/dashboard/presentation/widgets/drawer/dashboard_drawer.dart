import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/core/gen/assets.gen.dart';
import 'package:responsive_dashboard_mvvm/core/styles/app_colors.dart';
import 'package:responsive_dashboard_mvvm/features/dashboard/presentation/widgets/drawer/user_info.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        children: [
          UserInfo(
            userName: 'Hayam Tarek',
            userEmail: 'hayamtareq28@gmail.com',
            userImage: Assets.images.avatar.path,
          ),
        ],
      ),
    );
  }
}
