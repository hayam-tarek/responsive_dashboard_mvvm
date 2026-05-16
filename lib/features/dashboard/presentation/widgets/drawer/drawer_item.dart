import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_mvvm/core/styles/app_colors.dart';
import 'package:responsive_dashboard_mvvm/core/styles/app_text_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item});
  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        item.iconSvg,
        colorFilter: const ColorFilter.mode(
          AppColors.lightBlue,
          BlendMode.srcIn,
        ),
      ),
      title: Text(item.title, style: AppTextStyle.styleRegular16),
      onTap: item.onTap,
    );
  }
}

class DrawerItemModel {
  final String iconSvg;
  final String title;
  final VoidCallback? onTap;

  const DrawerItemModel({
    required this.iconSvg,
    required this.title,
    this.onTap,
  });
}
