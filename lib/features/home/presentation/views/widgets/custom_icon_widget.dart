import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomIconhWidget extends StatelessWidget {
  const CustomIconhWidget({
    super.key,
    required this.icon,
    this.iconColor = Colors.white,
  });
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: 0.3),
      ),
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kSearchView);
        },
        icon: Icon(icon, size: 28, color: iconColor),
      ),
    );
  }
}
