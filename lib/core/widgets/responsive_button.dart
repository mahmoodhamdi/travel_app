import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton(
      {super.key, this.width = 120, this.isResponsive = false});
  final double? width;
  final bool isResponsive;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      height: 60,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/button-one.png",
          ),
        ],
      ),
    );
  }
}
