import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/core/styles/app_colors.dart';
import 'package:responsive_dashboard_mvvm/core/styles/app_text_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userImage,
  });
  final String userName;
  final String userEmail;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(12),
        color: AppColors.lightGray,
      ),
      child: ListTile(
        leading: Image.asset(userImage),
        title: Text(userName, style: AppTextStyle.styleSemiBold16),
        subtitle: Text(
          userEmail,
          style: AppTextStyle.styleRegular12.copyWith(
            color: AppColors.darkGray,
          ),
        ),
      ),
    );
  }
}
