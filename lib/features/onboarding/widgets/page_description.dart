import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/core/widgets/app_large_text.dart';
import 'package:travel_app/core/widgets/app_text.dart';
import 'package:travel_app/core/widgets/responsive_button.dart';
import 'package:travel_app/features/onboarding/data/model/onboarding_page_model.dart';

class PageDescription extends StatelessWidget {
  const PageDescription({
    super.key,
    required this.pages,
    required this.index,
  });

  final List<OnboardingPageModel> pages;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLargeText(text: pages[index].title),
        AppText(text: pages[index].subtitle, size: 30),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 250,
          child: AppText(
            text: pages[index].description,
            color: AppColors.textColor2,
            size: 14,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const ResponsiveButton(),
      ],
    );
  }
}
