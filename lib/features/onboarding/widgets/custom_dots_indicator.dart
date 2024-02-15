import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            3,
            (dotsIndex) => Container(
                margin: const EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: dotsIndex == index
                        ? AppColors.mainColor
                        : AppColors.mainColor.withOpacity(0.3)),
                width: 8,
                height: dotsIndex == index ? 25 : 8)));
  }
}
