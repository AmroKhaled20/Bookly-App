import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBarWidget extends StatelessWidget {
  const CustomBarWidget({
    super.key,
    required this.icon,
    this.colorr = Colors.white,
    this.onPressed,
  });
  final IconData icon;
  final Color? colorr;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.logo, scale: 2),

          CustomIconhWidget(
            icon: icon,
            iconColor: colorr,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
