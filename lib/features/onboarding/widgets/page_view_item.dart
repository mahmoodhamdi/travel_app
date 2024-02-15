import 'package:flutter/material.dart';
import 'package:travel_app/features/onboarding/data/model/onboarding_page_model.dart';
import 'package:travel_app/features/onboarding/widgets/custom_dots_indicator.dart';
import 'package:travel_app/features/onboarding/widgets/page_description.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.pages,
    required this.index,
  });

  final List<OnboardingPageModel> pages;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pages[index].imagePath),
        )),
        child: Container(
          margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            PageDescription(
              pages: pages,
              index: index,
            ),
            CustomDotsIndicator(
              index: index,
            )
          ]),
        ));
  }
}
